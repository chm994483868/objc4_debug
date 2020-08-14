//
//  NSObject+Extern.h
//  KCObjc
//
//  Created by CHM on 2020/8/14.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Extern)

- (void)doInstanceWork;
+ (void)doInstanceWork;

@end

NS_ASSUME_NONNULL_END
