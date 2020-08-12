//
//  HHManager.h
//  KCObjc
//
//  Created by CHM on 2020/8/12.
//

#import "HHStaff.h"

NS_ASSUME_NONNULL_BEGIN

@interface HHManager : HHStaff {
    NSInteger officeNum;
}

- (void)doInstanceManagerWork; // 对象方法
+ (void)doClassManagerWork; // 类方法

@end

NS_ASSUME_NONNULL_END
