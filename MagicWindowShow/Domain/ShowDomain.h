//
//  ShowDomain.h
//  MagicWindowShow
//
//  Created by 刘家飞 on 16/3/2.
//  Copyright © 2016年 cafei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDomain.h"

@interface TourismDomain : NSObject

@property (nonatomic, strong) NSArray *contentList;
@property (nonatomic, strong) NSArray *headList;

@end

@interface NewsDomain : NSObject

@property (nonatomic, strong) NSArray *internetList;
@property (nonatomic, strong) NSArray *sportList;
@property (nonatomic, strong) NSArray *entertainmentList;

@end

@interface DianShangDomain : NSObject

@property (nonatomic, strong) NSArray *headList;
@property (nonatomic, strong) NSArray *middleList;
@property (nonatomic, strong) NSArray *contentList;

@end

@interface O2ODomain : NSObject

@property (nonatomic, strong) NSArray *contentList;
@property (nonatomic, strong) NSArray *headList;

@end

@interface TukuDomain : NSObject

@property (nonatomic, strong) NSArray *contentList;

@end
