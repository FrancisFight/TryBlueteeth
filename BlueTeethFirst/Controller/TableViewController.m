//
//  TableViewController.m
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import "TableViewController.h"
#import <CoreBluetooth/CoreBluetooth.h>

#import "BlueHeart.h"
#import "TableViewCell.h"
#import "InfoTableViewController.h"
@interface TableViewController () <UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate,CBCentralManagerDelegate, CBPeripheralDelegate>

@end

@implementation TableViewController {
    UITableView *tableview;
    NSMutableArray *bluearray;
    
    CBCentralManager *centralmanager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate = self;
    tableview.dataSource = self;
    tableview.rowHeight = UITableViewAutomaticDimension;
    tableview.estimatedRowHeight = 300;
    
    [self.view addSubview:tableview];
    
    //Navigator
    self.title = @"蓝牙设备列表";
    
    centralmanager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    bluearray = [NSMutableArray new];

    
//    CSRConnectionManager *CSR = [CSRConnectionManager sharedInstance];
//    [CSR addDelegate:self];
//    [CSR startScan:nil];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return bluearray.count;
}


//检查中心设备
- (void)centralManagerDidUpdateState:(nonnull CBCentralManager *)central {
    switch (centralmanager.state) {
        case CBManagerStateUnknown:
            NSLog(@">>>CBCentralManagerStateUnknown");
            break;
        case CBManagerStateResetting:
            NSLog(@">>>CBCentralManagerStateResetting");
            break;
        case CBManagerStateUnsupported:
            NSLog(@">>>CBCentralManagerStateUnsupported");
            break;
        case CBManagerStateUnauthorized:
            NSLog(@">>>CBCentralManagerStateUnauthorized");
            break;
        case CBManagerStatePoweredOff:
            NSLog(@">>>CBCentralManagerStatePoweredOff");
            break;
        case CBManagerStatePoweredOn:
        {
            NSLog(@">>>CBCentralManagerStatePoweredOn");
            [centralmanager scanForPeripheralsWithServices:nil options:nil];
        }
            break;
        default:
            break;
    }
}

//寻找外设
- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary<NSString *,id> *)advertisementData RSSI:(NSNumber *)RSSI {
    
    NSLog(@"Find device:%@", [peripheral name]);
    BlueHeart *discoverdBlue = [[BlueHeart alloc] init];
    discoverdBlue.discoveredPeripheral = peripheral;
    discoverdBlue.rssi = RSSI;
    
    [self saveBLE:discoverdBlue];
    
}

- (BOOL)saveBLE:(BlueHeart *)discoverdBlue {
    for (BlueHeart *oneofeach in bluearray) {
        if([oneofeach.discoveredPeripheral.identifier.UUIDString isEqualToString:discoverdBlue.discoveredPeripheral.identifier.UUIDString]) {
            return NO;
        }
    }
    
    [bluearray addObject:discoverdBlue];
    [tableview reloadData];
    return YES;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"myblueheart"];
    if (!cell) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myblueheart"];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.model = bluearray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [centralmanager stopScan];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"冲吗？" message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"冲" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        InfoTableViewController *infoview = [[InfoTableViewController alloc] init];
        infoview.centralmanager = self->centralmanager;
        
        BlueHeart *discoverdBlue = self->bluearray[indexPath.row];
        infoview.peripheral = discoverdBlue.discoveredPeripheral;
        
        [self.navigationController pushViewController:infoview animated:YES];
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
