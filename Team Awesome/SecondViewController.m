//
//  SecondViewController.m
//  Team Awesome
//
//  Created by Liviu Maria on 25/02/2015.
//  Copyright (c) 2015 Liviu Maria. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *secondtableview;
@property (strong, nonatomic) NSLocale *locale;
@property (strong, nonatomic) NSArray *familyNames;
@property (strong, nonatomic) NSMutableArray *fontsArray;

@end


@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _secondtableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 0) style:UITableViewStylePlain];
    
    
    [self.view addSubview: _secondtableview];
    
    _secondtableview.dataSource   = self;
    _secondtableview.delegate     = self;
    
    _locale = [NSLocale currentLocale];
    _familyNames =[[NSArray alloc] initWithArray:[UIFont familyNames]];
    _fontsArray = [[NSMutableArray alloc] init];
    
    NSInteger indFamily;
    
    for (indFamily=0; indFamily<[_familyNames count]; ++indFamily)
    {
        [_fontsArray addObject:[UIFont fontNamesForFamilyName:_familyNames[indFamily]]];
    }

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return _familyNames.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_fontsArray[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell   =   [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.text = _fontsArray[indexPath.section][indexPath.row];
    
    UIFont *myFont          =   [ UIFont fontWithName: cell.textLabel.text size: 15.0 ];
    
//    if(indexPath.row == 0){
//        cell.backgroundColor = [UIColor orangeColor];
//    
//    }else{
//        cell.backgroundColor = [UIColor yellowColor];
//    }
    cell.textLabel.font  = myFont;
    
    
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return _familyNames[section];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
