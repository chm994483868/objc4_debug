//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "HHManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // 创建实例对象
//        HHManager *mgr = [[HHManager alloc] init];
//        NSLog(@"🎉🎉🎉 Hello, World! \n mgr = %@ \n", mgr);
        
        HHStaff *staffA = [[HHStaff alloc] init];
        HHStaff *staffB = [[HHStaff alloc] init];
        
        NSLog(@"❤️❤️❤️ 实例对象: staffA = %p - staffB = %p \n", staffA, staffB);
        
        Class staffClassA = [staffA class];
        Class staffClassB = object_getClassName(staffB);
        Class staffClassC = [HHStaff class];
        
        NSLog(@"类对象： %p - %p - %p", staffClassA, staffClassB, staffClassC);
    }
    
    return 0;
}
