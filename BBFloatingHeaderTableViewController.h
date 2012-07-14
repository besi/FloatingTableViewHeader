//
//  FloatingHeaderViewController.h
//  FloatingTableViewControllerExample
//
//  Created by Beat Besmer on 14.07.12.
//

#import <UIKit/UIKit.h>
#import "BBFloatingHeaderCell.h"

/** 
 
 This class provides a generic way to have a floating header cell in a `UITableView` like the grouped Spotlight search results on iOS.
 To achieve this, the class implements the UIScrollViewDelegate protocol and when a scroll occurs then the first content view inside
 the header cell is moved up according to the next header's position in the list.
 
 ### Setup
 
 1. Create a TableView and set the Class of the ViewController to FloatingHeaderViewController
 2. Create the header cell in IB and set its class to FloatingHeaderCell
 3. Make sure that your floating header view is the topmost view in the FloatingHeaderCell view hierarchy

 ### Credits
 
 If you find this component useful you can press the "UP" button on this StackOverflow post / answer: <http://stackoverflow.com/q/11475897>
 
 @see FloatingHeaderCell
 */
@interface BBFloatingHeaderTableViewController : UITableViewController


@end
