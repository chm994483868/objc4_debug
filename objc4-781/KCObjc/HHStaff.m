//
//  HHStaff.m
//  KCObjc
//
//  Created by CHM on 2020/8/12.
//

#import "HHStaff.h"

@implementation HHStaff

- (void)doInstanceStaffWork { // 对象方法
    NSLog(@"📢📢📢 %s", __FUNCTION__);
}

+ (void)doClassStaffWord { // 类方法
    NSLog(@"📢📢📢 %s", __FUNCTION__);
}

@end
