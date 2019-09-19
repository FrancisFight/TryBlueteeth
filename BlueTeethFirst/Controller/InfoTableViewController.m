//
//  InfoTableViewController.m
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import "InfoTableViewController.h"
#import "PeriCell.h"

@interface InfoTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation InfoTableViewController {
    UITableView *tableVView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableVView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableVView.delegate = self;
    tableVView.dataSource = self;
    tableVView.rowHeight = UITableViewAutomaticDimension;
    tableVView.estimatedRowHeight = 300;
    
    [self.view addSubview:tableVView];
    
    [_centralmanager setDelegate:self];
    
    [_centralmanager connectPeripheral:_peripheral options:nil];
    
    
    _arrayList = [[NSMutableArray alloc]init];
    _characteristicNum = 0;
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _arrayList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSMutableDictionary *dict = _arrayList[section];
    return dict.count;
}

//连接失败
- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error
{
    NSLog(@"didFailToConnectPeripheral : %@", error.localizedDescription);
}

//连接成功外设
- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
    NSLog(@"Did connect to peripheral:%@", peripheral);
    [self.arrayList removeAllObjects];
    [_peripheral setDelegate:self];
    [_peripheral discoverServices:nil];
}

//获取外设服务
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
    if (error)
    {
        NSLog(@"didDiscoverServices : %@", [error localizedDescription]);
        return;
    }
    
    for (CBService *service in peripheral.services) {
      //  NSLog(@"所有的服务：%@",service);
        NSLog(@"所有的服务：%@",service.UUID);
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithDictionary:@{@"Section":service.UUID.description}];
        [self.arrayList addObject:dict];
        [service.peripheral discoverCharacteristics:nil forService:service];
    }
}

//获取特征
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(nonnull CBService *)service error:(nullable NSError *)error {
    if (error)
    {
        NSLog(@"didDiscoverCharacteristicsForService error : %@", [error localizedDescription]);
        return;
    }
    
    for (CBCharacteristic *charact in service.characteristics) {
        self.characteristicNum ++;
        [peripheral readValueForCharacteristic:charact];
        [peripheral setNotifyValue:YES forCharacteristic:charact];
    }
}

//读取特征数据
- (void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(nonnull CBCharacteristic *)characteristic error:(nullable NSError *)error {
    self.characteristicNum --;
    if (self.characteristicNum == 0) {
        [tableVView reloadData];
    }
    
    if (error)
    {
        NSLog(@"didUpdateValueForCharacteristic error : %@", error.localizedDescription);
        return;
    }
    
    NSString *stringFromData = [[NSString alloc] initWithData:characteristic.value encoding:NSUTF8StringEncoding];
    if ([stringFromData isEqualToString:@"EOM"])
    {
        NSLog(@"the characteristic text is END");
                [peripheral setNotifyValue:NO forCharacteristic:characteristic];
                [self.centralmanager cancelPeripheralConnection:peripheral];
    }
    
    for (NSMutableDictionary *dic in self.arrayList)
    {
        NSString *service = [dic valueForKey:@"Section"];
        if ([service isEqual:characteristic.service.UUID.description])
        {
            NSData *data = characteristic.value;
            NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            [dic setValue:str forKey:characteristic.UUID.description];
        }
    }
}

/** 订阅状态的改变 */
-(void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    if (error) {
        NSLog(@"订阅失败");
        NSLog(@"%@",error);
    }
    if (characteristic.isNotifying) {
        NSLog(@"订阅成功");
    } else {
        NSLog(@"取消订阅");
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PeriCell *cell = [tableVView dequeueReusableCellWithIdentifier:@"myblueheart"];
    if (!cell) {
        cell = [[PeriCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myblueheart"];
    }
    
    NSMutableDictionary *dictionary = _arrayList[indexPath.section];
    NSArray *dictarray = [dictionary allKeys];
    
    cell.PeriScript.text = dictarray[indexPath.row];
    cell.PeriValue.text = [dictionary valueForKey:dictarray[indexPath.row]];
    
    return cell;
}

@end
