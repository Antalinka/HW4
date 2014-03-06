//
//  RouteViewController.m
//  MU_108_lection_4
//
//  Created by Exo-terminal on 3/5/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "RouteViewController.h"


@interface RouteViewController ()
@property NSArray* tableData;
@property NSArray* priceData;
@end

@implementation RouteViewController


-(void)loadView{
    [super loadView];
    
//    NSLog(@" load view: %@", self.tableView);

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableData = @[@"2E",@"3",@"5E",@"6E",@"7E",@"8",@"9",@"10E",@"11E",@"12",@"14",@"15",@"15E",@"16E",@"17E",@"18E",@"19E",@"20",@"20E",@"25",@"28",@"29",@"30",@"32",@"33E",@"34E",@"35E",@"38E",@"39",@"40"];
    
    self.priceData = @[@"2.50грн",@"1.00грн",@"2.75грн",@"2.50грн",@"2.75грн",@"1.00грн",@"1.00грн",@"3.00грн",@"3.00грн",@"1.00грн",@"1.00грн",@"3.00грн",@"2.50грн",@"3.25грн",@"2.50грн",@"3.00грн",@"1.00грн",@"2.50грн",@"1.00грн",@"1.00грн",@"1.00грн",@"1.00грн",@"1.00грн",@"1.00грн",@"3.00грн",@"2.25грн",@"2.50грн",@"3.00грн",@"1.00грн",@"3.00грн"];
    
   
    NSLog(@"%d",[self.tableData count]);
    NSLog(@"%d",[self.priceData count]);
    
    //    NSLog(@"view did load: %@", self.tableView);
    
}          

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.tableData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.tableData[indexPath.row];
    cell.detailTextLabel.text = self.priceData[indexPath.row];
    
    return cell;
}
#pragma mark - Table view delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"selected row index %@", indexPath);
    
    [self.navigationItem setTitle:self.tableData[indexPath.row]];
    
}


    
/*
// Override to support conditional editing of the table view.
- (BOO
 L)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
