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

#import "HHManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        HHStaff *staff = [[HHStaff alloc] init];
//        // NSObject *staff = [[NSObject alloc] init];
//        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ class_getInstanceSize => %zd", class_getInstanceSize([staff class]));
//        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ malloc_size => %zd", malloc_size(CFBridgingRetain(staff)));
//        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ sizeof => %zd", sizeof(staff));
        
//        struct TEMPSTRUCT {
//            Class isa; // 补0 偏0 长8 //在 继承的 NSObject 中还有一个 Class isa; 成员变量
//            int _age; // 补0 偏8 长12
//            int _height; // 补0 偏12 长16
//            NSString *_name; // 补0 偏16 长24
//        };
//
//        struct TEMPSTRUCT tempStruct;
//        NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ sizeof => %zd", sizeof(tempStruct));
        
//        HHManager *mgr = [[HHManager alloc] init];
//
//        Class class1 = [mgr class];
//        Class class2 = [HHManager class];
//        Class class3 = object_getClass(mgr);
//        Class class4 = NSClassFromString(@"HHManager");
//
//        NSLog(@"👘👘👘 class1 %p-%@", class1, class1);
//        NSLog(@"👘👘👘 class2 %p-%@", class2, class2);
//        NSLog(@"👘👘👘 class3 %p-%@", class3, class3);
//        NSLog(@"👘👘👘 class4 %p-%@", class4, class4);
        
        HHStaff *staff = [[HHStaff alloc] init];
         Class class1 = [staff superclass];
         NSLog(@"👗👗👗 一父类 - %p %@  其父类的类对象-%p", class1, class1, [HHStaff class]);
         class1 = [class1 superclass];
         NSLog(@"👗👗👗 二父类 - %p %@  其父类的类对象-%p", class1, class1, [NSObject class]);
         class1 = [class1 superclass];
         NSLog(@"👗👗👗 三父类 - %p %@", class1, class1);
         class1 = [class1 superclass];
         NSLog(@"👗👗👗 四父类 - %p %@", class1, class1);
         class1 = [class1 superclass];
         NSLog(@"👗👗👗 五父类 - %p %@", class1, class1);
    }
    
    return 0;
}
