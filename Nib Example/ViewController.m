//
//  ViewController.m
//  Nib Example
//
//  Created by Walter Gonzalez Domenzain on 21/02/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "ViewController.h"
#import "cellOaxaca.h"
#import "PopupView.h"
#import "View2.h"

PopupView *Popup;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Popup                        = [[PopupView alloc] init];
    Popup.view.frame             = CGRectMake(20, 234, Popup.view.frame.size.width, Popup.view.frame.size.height);
    Popup.view.hidden = YES;
    [self.view addSubview:Popup.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 84;
}

//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellOaxaca");
    static NSString *CellIdentifier = @"cellOaxaca";
    
    cellOaxaca *cell = (cellOaxaca *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"cellOaxaca" bundle:nil] forCellReuseIdentifier:@"cellOaxaca"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellOaxaca"];
    }

    if (indexPath.row == 0)
    {
        cell.lblTeam.text = @"Tomateros";
        cell.imgTeam.image = [UIImage imageNamed:@"culiacan.png"];
        
    }
    else if (indexPath.row == 1)
    {
        cell.lblTeam.text = @"Cañeros";
        cell.imgTeam.image = [UIImage imageNamed:@"mochis.png"];
        
    }
    else if (indexPath.row == 2)
    {
        cell.lblTeam.text = @"Venados";
        cell.imgTeam.image = [UIImage imageNamed:@"mazatlan.png"];
        
    }
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Popup.view.hidden = NO;
    
    View2 *myNewVC = [[View2 alloc] init];
    
    // do any setup you need for myNewVC
    
    [self presentViewController:myNewVC animated:YES completion:nil];
}
- (IBAction)btnExitPressed:(id)sender {
}
@end
