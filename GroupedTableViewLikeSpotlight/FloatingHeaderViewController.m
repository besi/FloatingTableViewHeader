//
//  FloatingHeaderViewController.m
//  GroupedTableViewLikeSpotlight
//
//  Created by Beat Besmer on 14.07.12.
//

#import "FloatingHeaderViewController.h"

@interface FloatingHeaderViewController ()

@end

@implementation FloatingHeaderViewController

@synthesize headerHeight = _headerHeight;

#pragma mark - misc
- (NSArray *)headerCells{
    
    NSMutableArray *headerCells = [NSMutableArray array];
    
    for (UIView *cell in self.view.subviews) {
        if ([cell isMemberOfClass:[FloatingHeaderCell class]]){
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
    
    NSAssert(self.headerHeight > 0, @"Header height must be set to a value > 0");
    
    NSArray *headers = self.headerCells;
    
    if(headers.count < 2){
        return;
    }
    
    FloatingHeaderCell *firstHeader = [headers objectAtIndex:0];
    CGRect firstRect = firstHeader.frame;
    CGRect secondRect = ((UIView *)[headers objectAtIndex:1]).frame;
    
    // Tail of first - head of second
    int overlap = (firstRect.origin.y + self.headerHeight) - secondRect.origin.y;
    
    if (overlap >= 0){
        // Move the first one up
        UIView *headerContent = firstHeader.contentView;
        
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
