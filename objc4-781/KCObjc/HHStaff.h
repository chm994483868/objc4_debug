//
//  HHStaff.h
//  KCObjc
//
//  Created by CHM on 2020/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHStaff : NSObject {
    NSString *name;
}

- (void)doInstanceStaffWork; // 对象方法
+ (void)doClassStaffWord; // 类方法

@end

NS_ASSUME_NONNULL_END
