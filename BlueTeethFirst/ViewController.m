//
//  ViewController.m
//  BlueTeethFirst
//
//  Created by Francis Zeng on 2019/8/13.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import "ViewController.h"

#import <Masonry/Masonry.h>

@interface ViewController () <CSRConnectionManagerDelegate>
@property (nonatomic,strong)  NSMutableArray  * datasource;
@end

@implementation ViewController {
    UIView *blueview;
    UITextField *gettext;
    UITextField *gettext2;
    UIButton *returnbutton;
    
    CSRConnectionManager *CSR;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _datasource = [NSMutableArray array];
    
    CSR = [CSRConnectionManager sharedInstance];
    [CSR addDelegate:self];
    [CSR startScan:nil];
    
    blueview = [[UIView alloc] initWithFrame:self.view.bounds];
    blueview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:blueview];
    
    
    gettext = [UITextField new];
    [self.view addSubview:gettext];
    [gettext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(250, 50));
    }];
    gettext.backgroundColor = [UIColor whiteColor];
    gettext.borderStyle = UITextBorderStyleRoundedRect;
    gettext.font = [UIFont fontWithName:@"Arial" size:20.0f];
    gettext.textColor = [UIColor blackColor];
    
    gettext2 = [UITextField new];
    [self.view addSubview:gettext2];
    [gettext2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self->gettext.mas_top).offset(-70);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(250, 50));
    }];
    gettext2.backgroundColor = [UIColor whiteColor];
    gettext2.borderStyle = UITextBorderStyleRoundedRect;
    gettext2.font = [UIFont fontWithName:@"Arial" size:20.0f];
    gettext2.textColor = [UIColor blackColor];
    
    
    returnbutton = [[UIButton alloc] init];
    [self.view addSubview:returnbutton];
    [returnbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self->gettext.mas_bottom).offset(70);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    returnbutton.backgroundColor = [UIColor redColor];
    returnbutton.layer.borderColor = [[UIColor whiteColor] CGColor];
    returnbutton.layer.borderWidth = 2.0f;
    [returnbutton.layer setCornerRadius:10.0f];
    [returnbutton.layer setMasksToBounds:YES];
    [returnbutton setTitle:@"冲！蓝牙！" forState:UIControlStateNormal];
    [returnbutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [returnbutton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
   
    
    
}



- (void) buttonClick {
//    centralmanager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
//    centralmanager.delegate = self;

   // gettext.text = @"%lu",(unsigned long)CSR.devices.count;
    
}

////检查中心设备
//- (void)centralManagerDidUpdateState:(nonnull CBCentralManager *)central {
//    switch (centralmanager.state) {
//        case CBManagerStateUnknown:
//            NSLog(@">>>CBCentralManagerStateUnknown");
//            break;
//        case CBManagerStateResetting:
//            NSLog(@">>>CBCentralManagerStateResetting");
//            break;
//        case CBManagerStateUnsupported:
//            NSLog(@">>>CBCentralManagerStateUnsupported");
//            break;
//        case CBManagerStateUnauthorized:
//            NSLog(@">>>CBCentralManagerStateUnauthorized");
//            break;
//        case CBManagerStatePoweredOff:
//            NSLog(@">>>CBCentralManagerStatePoweredOff");
//            break;
//        case CBManagerStatePoweredOn:
//        {
//            NSLog(@">>>CBCentralManagerStatePoweredOn");
//            [centralmanager scanForPeripheralsWithServices:nil options:nil];
//        }
//            break;
//        default:
//            break;
//    }
//}
//
////寻找外设
//- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary<NSString *,id> *)advertisementData RSSI:(NSNumber *)RSSI {
//
//    NSLog(@"Find device:%@", [peripheral name]);
//    if ([peripheral.name isEqualToString:@"Hernando"]) {
//        centralmanager.delegate = self;
//        peripheralmanager = peripheral;
//        [centralmanager connectPeripheral:peripheralmanager options:nil];
//    }
//
//}
//
////连接成功外设
//- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
//    NSLog(@"Did connect to peripheral:%@", peripheral);
//    [centralmanager stopScan];
//    peripheralmanager.delegate = self;
//    [peripheralmanager discoverServices:nil];
//}
//
////获取外设服务
//- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
//    for (CBService *service in peripheral.services) {
//        NSLog(@"所有的服务：%@",service);
//    }
//    CBService *service = peripheral.services.firstObject;
//
//    [peripheral discoverCharacteristics:nil forService:service];
//}
//
//
////获取服务的特征
//- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error {
//    for(int i=0; i < service.characteristics.count; i++) {
//        CBCharacteristic *c = [service.characteristics objectAtIndex:i];
//        charactermanager = c;
//        //[peripheral discoverDescriptorsForCharacteristic:charactermanager];
//        [peripheral readValueForCharacteristic:charactermanager];
//
//    }
//}
//
////获取数据
//- (void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
//    NSData *data = characteristic.value;
//    NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    [_datasource addObject:str];
//    [self updatetextfield];
//    NSLog(@"信息来了！冲鸭：%@",str);
//}
//
//- (void)updatetextfield {
//    if(_datasource.count == 1)
//    gettext.text = _datasource[0];
//    if(_datasource.count == 2)
//    gettext2.text = _datasource[1];
//}



//点击空白处隐藏键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [gettext resignFirstResponder];
}

@end
