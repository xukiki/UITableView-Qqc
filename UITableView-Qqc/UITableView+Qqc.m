//
//  UITableView+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "UITableView+Qqc.h"

@implementation UITableView (Qqc)

/**
 *  注册UITableView所需的cell(载入同类名的nib文件)
 *
 *  @param nibClass   cell的class
 *  @param identifier 标志
 */
- (void)registerNibWithClass:(Class)nibClass forCellWithReuseIdentifier:(NSString *)identifier inBundle:(NSBundle*)bundle
{
    if (nibClass == NULL || identifier == nil)
    {
        return;
    }
    
    UINib* nib = [UINib nibWithNibName:NSStringFromClass(nibClass) bundle:bundle];
    [self registerNib:nib forCellReuseIdentifier:identifier];
}

// 注册Cell
- (void)registerNibWithName:(NSString *)strNib
{
    [self registerNib:[UINib nibWithNibName:strNib bundle:[NSBundle mainBundle]] forCellReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册Cell
- (void)registerNibWithName:(NSString *)strNib bundle:(NSString*)strBundleName
{
    NSBundle* bundle = [[NSBundle alloc] initWithPath:[[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"]];
    [self registerNib:[UINib nibWithNibName:strNib bundle:bundle] forCellReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

@end
