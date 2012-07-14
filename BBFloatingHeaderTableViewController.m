//
//  FloatingHeaderViewController.m
//  FloatingTableViewControllerExample
//
//  Created by Beat Besmer on 14.07.12.
//

#import "BBFloatingHeaderTableViewController.h"

@interface BBFloatingHeaderTableViewController ()

@property (readonly) NSArray *headerCells;

@end

@implementation BBFloatingHeaderTableViewController

#pragma mark - misc
- (NSArray *)headerCells{
    
    NSMutableArray *headerCells = [NSMutableArray array];
    
    for (UIView *cell in self.view.subviews) {
        if ([cell isMemberOfClass:[BBFloatingHeaderCell class]]){
            [headerCells addObject:cell];
        }
    }
    
    // Sort by y-position
    [headerCells sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        int y1 = ((UIView *)obj1).frame.origin.y;
        int y2 = ((UIView *)obj2).frame.origin.y;
        
        return y1 > y2;
    }];
    
    return headerCells;
}


#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    NSArray *headers = self.headerCells;
    
    if(headers.count < 2){
        return;
    }
    
    BBFloatingHeaderCell *firstHeader = [headers objectAtIndex:0];
    CGRect firstRect = firstHeader.frame;
    CGRect secondRect = ((UIView *)[headers objectAtIndex:1]).frame;
    UIView *headerContent = firstHeader.contentView;
    
    int headerHeight = ((UIView *)[[headerContent subviews] objectAtIndex:0]).frame.size.height;
        
    // Tail of first - head of second
    int overlap = (firstRect.origin.y + headerHeight) - secondRect.origin.y;
    
    if (overlap >= 0){
        // Move the first one up
        
        CGRect newRect = headerContent.frame;
        newRect.origin.y = -overlap;
        
        headerContent.frame = newRect;
    }
}


#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 1;
}

@end
