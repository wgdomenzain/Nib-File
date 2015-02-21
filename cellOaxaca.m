//
//  cellOaxaca.m
//  Nib Example
//
//  Created by Walter Gonzalez Domenzain on 21/02/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "cellOaxaca.h"

@implementation cellOaxaca

- (void)awakeFromNib
{
    self.vCell.layer.borderColor    = [UIColor clearColor].CGColor;
    self.vCell.layer.borderWidth    = 1;
    self.vCell.clipsToBounds        = YES;
    self.vCell.layer.cornerRadius   = 8;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
