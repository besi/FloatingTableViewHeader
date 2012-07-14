//
//  FloatingHeaderCell.m
//  GroupedTableViewLikeSpotlight
//
//  Created by Beat Besmer on 14.07.12.
//

#import "FloatingHeaderCell.h"



@implementation FloatingHeaderCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialisation
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(UIView *)contentView{
    return [self.subviews objectAtIndex:0];
}

@end
