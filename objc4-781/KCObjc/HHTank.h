//
//  HHTank.h
//  KCObjc
//
//  Created by CHM on 2020/8/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHTank : NSObject {
    @public
    union {
        uintptr_t direction;
        
        struct {
            uintptr_t left : 1;
            uintptr_t right : 1;
            uintptr_t top : 5;
            uintptr_t bottom : 1;
        };
        
    } _tankDirection;
}

@end

NS_ASSUME_NONNULL_END
