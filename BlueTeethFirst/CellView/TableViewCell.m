//
//  TableViewCell.m
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import "TableViewCell.h"
#import <Masonry/Masonry.h>
#import <CoreBluetooth/CoreBluetooth.h>

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _Bluename = [UILabel new];
        _Bluename.textColor = [UIColor blueColor];
        _Bluename.font = [UIFont fontWithName:@"Arial" size:18.0f];
        [self.contentView addSubview:self.Bluename];
        
        _BlueUUID = [UILabel new];
        _BlueUUID.textColor = [UIColor blackColor];
        _BlueUUID.font = [UIFont fontWithName:@"Arial" size:13.0f];
        [self.contentView addSubview:self.BlueUUID];
        
        
        _BlueSignal = [UILabel new];
        _BlueSignal.textColor = [UIColor blueColor];
        _BlueSignal.font = [UIFont fontWithName:@"Arial" size:18.0f];
        [self.contentView addSubview:self.BlueSignal];
        
        
        
    }
    return self;
}


- (void)setModel:(BlueHeart *)model {
    _model = model;
    [self setframeANDdate];
}

- (void)setframeANDdate {
    [self.Bluename mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
    }];
    
    [self.BlueSignal mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.Bluename.mas_right).offset(10);
    }];
    
    [self.BlueUUID mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BlueSignal.mas_bottom).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
    }];
    
    self.Bluename.text = [_model.discoveredPeripheral name];
    NSString *signal = [NSString stringWithFormat:@"信号：%@",_model.rssi];
    self.BlueSignal.text = signal;
    self.BlueUUID.text = _model.discoveredPeripheral.identifier.UUIDString;
}
@end
