//
//  FloatingHeaderCell.h
//  GroupedTableViewLikeSpotlight
//
//  Created by Beat Besmer on 14.07.12.
//

#import <UIKit/UIKit.h>

@interface FloatingHeaderCell : UITableViewCell


/// The first subview is assumed to be the content view which will be shifted upwards by the next table view header cell
@property (readonly, nonatomic) UIView *contentView;

@end
