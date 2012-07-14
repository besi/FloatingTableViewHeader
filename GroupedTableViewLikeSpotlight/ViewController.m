//
//  ViewController.m
//  GroupedTableViewLikeSpotlight
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return (section+1) + 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"headerCell"];
    
    if(section %2 == 0){
        [cell viewWithTag:22].backgroundColor = [UIColor blueColor];
    }else {
        [cell viewWithTag:22].backgroundColor = [UIColor blackColor];
    }
    
    return cell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contentCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"Section %i Row %i", indexPath.section, indexPath.row];
    
    // Alternate color 
    if(indexPath.section %2 == 0){
        cell.textLabel.textColor = [UIColor blueColor];
    } else{
        cell.textLabel.textColor = [UIColor blackColor];
    }
    
    return cell;
}

@end
