//
//  PeriCell.m
//  BlueTeethFirst
//
//  Created by 曾怡然 on 2019/8/19.
//  Copyright © 2019 Francis Zeng. All rights reserved.
//

#import "PeriCell.h"

#import <Masonry/Masonry.h>
@implementation PeriCell

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
        _PeriScript = [UILabel new];
        _PeriScript.textColor = [UIColor blueColor];
        _PeriScript.font = [UIFont fontWithName:@"Arial" size:18.0f];
        [self.contentView addSubview:self.PeriScript];
        
        _PeriValue = [UILabel new];
        _PeriValue.textColor = [UIColor blackColor];
        _PeriValue.font = [UIFont fontWithName:@"Arial" size:13.0f];
        [self.contentView addSubview:self.PeriValue];
        
        [self setframe];
    }
    return self;
}

- (void)setframe {
    [self.PeriScript mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
    }];

    [self.PeriValue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PeriScript.mas_bottom).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
    }];
}

@end
