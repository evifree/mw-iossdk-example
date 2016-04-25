//
//  SanyaPlaneCell.h
//  MagicWindowShow
//
//  Created by Tiyang Lou on 4/7/16.
//  Copyright © 2016 cafei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SanyaPlaneCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *bookImageView1;
@property (strong, nonatomic) IBOutlet UIImageView *bookImageView2;
@property (strong, nonatomic) IBOutlet UIImageView *img1;
@property (strong, nonatomic) IBOutlet UIImageView *img2;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imageViewWidthConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *itemHeightConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *itemHeightConstraint2;

@end
