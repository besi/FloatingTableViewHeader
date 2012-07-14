//
//  FloatingHeaderCell.h
//  FloatingTableViewControllerExample
//
//  Created by Beat Besmer on 14.07.12.
//

#import <UIKit/UIKit.h>

/**
 
 This subclass of UITableViewCell it is required for the FloatingHeaderViewController.
 
 **Notice**: It is important that the header view, which should be pushed up is the first view inside the cell's view hierarchy.
 
 */
@interface BBFloatingHeaderCell : UITableViewCell


/// The first subview is assumed to be the content view which will be shifted upwards by the next table view header cell
@property (readonly, nonatomic) UIView *contentView;

@end
