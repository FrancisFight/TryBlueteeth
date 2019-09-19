//
//  TableViewCell.h
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueHeart.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *Bluename;
@property (nonatomic, strong) UILabel *BlueUUID;

@property (nonatomic, strong) UILabel *BlueSignal;

@property (nonatomic, strong) BlueHeart *model;
@end

NS_ASSUME_NONNULL_END
