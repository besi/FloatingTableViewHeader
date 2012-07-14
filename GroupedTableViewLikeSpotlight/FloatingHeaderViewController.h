//
//  FloatingHeaderViewController.h
//  GroupedTableViewLikeSpotlight
//
//  Created by Beat Besmer on 14.07.12.
//

#import <UIKit/UIKit.h>
#import "FloatingHeaderCell.h"

/** This class provides a generic way to have a floating header cell in a `UITableView` like the grouped Spotlight search results on iOS.
 ### Usage
 
 1. Create a TableView and set the Class of the ViewController to FloatingHeaderViewController
 2. Create the header cell in IB and set its class to FloatingHeaderCell
 3. in `viewDidLoad` set the headerHeight property to the height of your header
 
 */
@interface FloatingHeaderViewController : UITableViewController

@property (readonly) NSArray *headerCells;

@end
