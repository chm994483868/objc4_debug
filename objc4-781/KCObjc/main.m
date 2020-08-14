//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

#include <stddef.h>

#import "HHStaff.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        HHStaff *staff = [[HHStaff alloc] init];
        
        NSObject *staff = [[NSObject alloc] init];
        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ class_getInstanceSize => %zd", class_getInstanceSize([staff class]));
        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ malloc_size => %zd", malloc_size(CFBridgingRetain(staff)));
        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ sizeof => %zd", sizeof(staff));
    }
    
    return 0;
}
