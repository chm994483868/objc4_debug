//
//  HHManager.m
//  KCObjc
//
//  Created by CHM on 2020/8/12.
//

#import "HHManager.h"

@implementation HHManager

- (void)doInstanceManagerWork { // 对象方法
    NSLog(@"📢📢📢 %s", __FUNCTION__);
}

+ (void)doClassManagerWork { // 类方法
    NSLog(@"📢📢📢 %s", __FUNCTION__);
}

@end
