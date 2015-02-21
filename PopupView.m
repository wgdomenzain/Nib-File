//
//  PopupView.m
//  Nib Example
//
//  Created by Walter Gonzalez Domenzain on 21/02/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "PopupView.h"

@interface PopupView ()

@end

@implementation PopupView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClosePressed:(id)sender
{
    self.view.hidden = YES;
}
@end
