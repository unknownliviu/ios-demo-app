//
//  ViewController.m
//  Team Awesome
//
//  Created by Liviu Maria on 18/02/2015.
//  Copyright (c) 2015 Liviu Maria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableview;
@property (strong, nonatomic) NSLocale *locale;
@property (strong, nonatomic) NSArray *countryArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height -20 -44 -49 ) style:UITableViewStylePlain];
    
    
    
    
    [self.view addSubview: _tableview];
    
    _tableview.dataSource   = self;
    _tableview.delegate     = self;
    
    _locale = [NSLocale currentLocale];
    _countryArray = [NSLocale ISOCountryCodes];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _countryArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell   =   [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    NSString *countryCode   =   [_countryArray objectAtIndex:indexPath.row ];
    UIFont *myFont          =   [ UIFont fontWithName: @"AvenirNext-Regular" size: 15.0 ];
    
    cell.textLabel.font  = myFont;
    cell.textLabel.text = [[NSLocale systemLocale] displayNameForKey:NSLocaleCountryCode value:countryCode];
    
    if(indexPath.row == 0){
        cell.backgroundColor = [UIColor yellowColor];
    }
    
    if(indexPath.row %2==0 && indexPath.row > 0)
        cell.backgroundColor = [UIColor greenColor];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
