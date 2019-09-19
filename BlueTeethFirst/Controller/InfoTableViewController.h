//
//  InfoTableViewController.h
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
NS_ASSUME_NONNULL_BEGIN

@interface InfoTableViewController : UIViewController <CBPeripheralManagerDelegate,CBCentralManagerDelegate,CBPeripheralDelegate>

@property (nonatomic,strong) CBCentralManager *centralmanager;
@property (nonatomic,strong) CBPeripheral *peripheral;
@property (nonatomic,strong) CBCharacteristic *charactermanager;
@property (nonatomic,strong) NSMutableArray *arrayList;
@property (atomic, assign) int characteristicNum;
@end

NS_ASSUME_NONNULL_END
