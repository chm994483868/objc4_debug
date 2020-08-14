//
//  main.m
//  LGCallocTest
//
//  Created by cooci on 2019/2/7.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
		
		void *p = calloc(1, 40);
		NSObject *obj = [[NSObject alloc] init];
		
		NSLog(@"%lu", malloc_size(p));
		NSLog(@"%@", obj);
		NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ class_getInstanceSize => %zd", class_getInstanceSize([obj class]));
		NSLog(@"🧚‍♂️🧚‍♂️🧚‍♂️ malloc_size => %zd", malloc_size(CFBridgingRetain(obj)));
		NSLog(@"obj => %zd", malloc_size(CFBridgingRetain(obj)));
    }
    return 0;
}
