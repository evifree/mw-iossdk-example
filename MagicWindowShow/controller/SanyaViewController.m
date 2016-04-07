//
//  SanyaViewController.m
//  MagicWindowShow
//
//  Created by Tiyang Lou on 4/7/16.
//  Copyright © 2016 cafei. All rights reserved.
//

#import "SanyaViewController.h"
#import <MagicWindowSDK/MWApi.h>
#import "GlobalDefine.h"
#import "UIImageView+WebCache.h"
#import "SanyaMapCell.h"
#import "SanyaFoodCell.h"
#import "SanyaHotelCell.h"
#import "SanyaPlaneCell.h"
#import <SDWebImage/UIButton+WebCache.h>

@interface SanyaBannerCell : UITableViewCell


@end
@interface SanyaViewController ()

@end

@implementation SanyaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.allowsSelection = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        NSString *identifier = @"SanyaMapCell";
        [tableView registerNib:[UINib nibWithNibName:@"SanyaMapCell" bundle:nil] forCellReuseIdentifier:@"SanyaMapCell"];
        SanyaMapCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if ([MWApi isActiveOfmwKey:Home_detail_uber]) {
            [MWApi configAdViewWithKey:Home_detail_uber withTargetView:cell.texiIcon withTargetViewController:self success:^(NSString * _Nonnull key, UIView * _Nonnull view, MWCampaignConfig * _Nonnull campaignConfig) {
                [cell.texiIcon sd_setImageWithURL:[NSURL URLWithString:campaignConfig.imageUrl] placeholderImage:[UIImage imageNamed:@"打车"]];
            } failure:^(NSString * _Nonnull key, UIView * _Nonnull view, NSString * _Nullable errorMessage) {
                
            } tap:nil mLinkHandler:^NSDictionary * _Nullable(NSString * _Nonnull key, UIView * _Nonnull view) {
                return nil;
            }];
        } else {
            cell.uberView.hidden = YES;
        }
        return cell;
    } else if (indexPath.row == 2) {
        NSString *identifier = @"SanyaFoodCell";
        [tableView registerNib:[UINib nibWithNibName:@"SanyaFoodCell" bundle:nil] forCellReuseIdentifier:@"SanyaFoodCell"];
        SanyaFoodCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        cell.foodImageWidthConstraint.constant = (CGRectGetWidth(tableView.frame) - 8 * 2 - 20 * 2) / 3;
        [MWApi configAdViewWithKey:Home_detail_dianping withTargetView:cell.moreFoodImageView withTargetViewController:self success:^(NSString * _Nonnull key, UIView * _Nonnull view, MWCampaignConfig * _Nonnull campaignConfig) {
            [cell.moreFoodImageView sd_setImageWithURL:[NSURL URLWithString:campaignConfig.imageUrl] placeholderImage:[UIImage imageNamed:@"更多美食"]];
            
        } failure:^(NSString * _Nonnull key, UIView * _Nonnull view, NSString * _Nullable errorMessage) {
            
        } tap:nil mLinkHandler:^NSDictionary * _Nullable(NSString * _Nonnull key, UIView * _Nonnull view) {
            return nil;
        }];
        
        return cell;
    } else if (indexPath.row == 3) {
        NSString *identifier = @"SanyaHotelCell";
        [tableView registerNib:[UINib nibWithNibName:@"SanyaHotelCell" bundle:nil] forCellReuseIdentifier:@"SanyaHotelCell"];
        SanyaHotelCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        [MWApi configAdViewWithKey:Home_detail_hotel withTargetView:cell.bookImageView withTargetViewController:self success:^(NSString * _Nonnull key, UIView * _Nonnull view, MWCampaignConfig * _Nonnull campaignConfig) {
            [cell.bookImageView sd_setImageWithURL:[NSURL URLWithString:campaignConfig.imageUrl] placeholderImage:[UIImage imageNamed:@"预定按钮"]];
            
        } failure:^(NSString * _Nonnull key, UIView * _Nonnull view, NSString * _Nullable errorMessage) {
            
        } tap:nil mLinkHandler:^NSDictionary * _Nullable(NSString * _Nonnull key, UIView * _Nonnull view) {
            return nil;
        }];
        
        return cell;
    } else if (indexPath.row == 4) {
        NSString *identifier = @"SanyaPlaneCell";
        [tableView registerNib:[UINib nibWithNibName:@"SanyaPlaneCell" bundle:nil] forCellReuseIdentifier:@"SanyaPlaneCell"];
        SanyaPlaneCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        cell.imageViewWidthConstraint.constant = CGRectGetWidth(tableView.frame)*120/400;
        cell.itemHeightConstraint.constant = cell.imageViewWidthConstraint.constant + 16;
        cell.itemHeightConstraint2.constant = cell.imageViewWidthConstraint.constant + 16;
        [MWApi configAdViewWithKey:Home_detail_plane withTargetView:cell.bookImageView1 withTargetViewController:self success:^(NSString * _Nonnull key, UIView * _Nonnull view, MWCampaignConfig * _Nonnull campaignConfig) {
            [cell.bookImageView1 sd_setImageWithURL:[NSURL URLWithString:campaignConfig.imageUrl] placeholderImage:[UIImage imageNamed:@"限时特惠"]];
            
        } failure:^(NSString * _Nonnull key, UIView * _Nonnull view, NSString * _Nullable errorMessage) {
            
        } tap:nil mLinkHandler:^NSDictionary * _Nullable(NSString * _Nonnull key, UIView * _Nonnull view) {
            return nil;
        }];
        
        [MWApi configAdViewWithKey:Home_detail_plane withTargetView:cell.bookImageView2 withTargetViewController:self success:^(NSString * _Nonnull key, UIView * _Nonnull view, MWCampaignConfig * _Nonnull campaignConfig) {
            [cell.bookImageView2 sd_setImageWithURL:[NSURL URLWithString:campaignConfig.imageUrl] placeholderImage:[UIImage imageNamed:@"限时特惠"]];
            
        } failure:^(NSString * _Nonnull key, UIView * _Nonnull view, NSString * _Nullable errorMessage) {
            
        } tap:nil mLinkHandler:^NSDictionary * _Nullable(NSString * _Nonnull key, UIView * _Nonnull view) {
            return nil;
        }];
        
        return cell;
    }else {
        NSString *identifier = @"SanyaBannerCell";
        SanyaBannerCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        return cell;
    }
}

#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = 0;
    switch (indexPath.row) {
        case 0:
        {
            height = CGRectGetWidth(tableView.frame)*225/400 + 91 + 10;
            break;
        }
        case 1:
        {
            height = CGRectGetWidth(tableView.frame)*207/400 + 45 + 60 + 10;
            break;
        }
        case 3:
        {
            height = 45 + 207 + 60 + 10;
            break;
        }
        case 4:
        {
            height = 45 + (CGRectGetWidth(tableView.frame)*120/400)*2 + 32;
            break;
        }
        default:
            height = CGRectGetWidth(tableView.frame)*326/400;
            break;
    }
    return height;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
