//
//  TestMessage.m
//  KCObjc
//
//  Created by CHM on 2020/8/13.
//

#import "TestMessage.h"
#import "BackupTestMessage.h"
#import "BackupTestMessageOther.h"

@implementation TestMessage

- (void)invokeNewMethod {
    NSLog(@"🟠🟠🟠 %s", __FUNCTION__);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    // 判断是否是外界调用的方法
//    if ([NSStringFromSelector(sel) isEqualToString:@"testFunction"]) {
//        // 动态给 TestMessage 添加方法
//
//        return YES;
//    }
    
    return [super resolveInstanceMethod:sel]; // 如果以上没有执行的话，转到父类执行
}

+ (BOOL)resolveClassMethod:(SEL)sel {
//    // 判断是否是外界调用的方法
//    if ([NSStringFromSelector(sel) isEqualToString:@"testClassFunction"]) {
//        // 对类添加类方法，需要将方法添加到元类中
//
//        return YES;
//    }
    
    return [super resolveClassMethod:sel];
}

//- (id)forwardingTargetForSelector:(SEL)aSelector {
//    if ([NSStringFromSelector(aSelector) isEqualToString:@"testFunction"]) {
//        return [[BackupTestMessageOther alloc] init];
//    }
//
//    return [super forwardingTargetForSelector:aSelector];
//}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    // 如果返回 nil 则进行手动创建签名
    if ([super methodSignatureForSelector:aSelector] == nil) {
        NSMethodSignature *sign = [NSMethodSignature signatureWithObjCTypes:"v@:^{NSString=#}"];
        return sign;
    }
    
    return [super methodSignatureForSelector:aSelector];
    
    //    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
//    // 创建备用对象
//    BackupTestMessage *backUp = [[BackupTestMessage alloc] init];
//
//    // 可修改选择子，也可以不修改，当时备用对象一定要能够处理对应的选择子
//    SEL changeSEL = @selector(changeFunction:);
//    anInvocation.selector = changeSEL;
//
//    SEL sel = anInvocation.selector;
//
////    - (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
//
//    NSString *param = @"Parameter";
//    [anInvocation setArgument:(__bridge void * _Nonnull)(param) atIndex:2];
//
//    // anInvocation.target // 这个 target 就是最开始执行函数对象
//    // anInvocation.methodSignature // 这个 signature 就是上面 methodSignatureForSelector: 函数返回的 // ObjCTypes: 必须有值至少是最简单的方法签名："v@:"
//
//    NSLog(@"🌺🌺🌺 %s target = %@", __FUNCTION__, anInvocation.target);
    
    SEL originalSEL = anInvocation.selector;
    SEL invokeNewMethod = @selector(invokeNewMethod);
    anInvocation.selector = invokeNewMethod;
    
    // 判断备用对象是否可以响应传递进来等待响应的 SEL
    if ([anInvocation.target respondsToSelector:invokeNewMethod]) {
        [anInvocation invokeWithTarget:anInvocation.target];
    } else {
        // 如果备用对象不能响应，则抛出异常
        [self doesNotRecognizeSelector:originalSEL];
    }
}

@end
