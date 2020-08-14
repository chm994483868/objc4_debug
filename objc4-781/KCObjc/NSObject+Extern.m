//
//  NSObject+Extern.m
//  KCObjc
//
//  Created by CHM on 2020/8/14.
//

#import "NSObject+Extern.h"

#import <AppKit/AppKit.h>


@implementation NSObject (Extern)

- (void)doInstanceWork {
    NSLog(@"📢📢📢 %s self = %@", __FUNCTION__, self);
}

+ (void)doInstanceWork {
    NSLog(@"📢📢📢 %s self = %@", __FUNCTION__, self);
}

@end
