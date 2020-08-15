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
#import "HHTank.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // 具体赋值方法
        HHTank *tank = [HHTank new];
        
        // 方法1：
        tank->_tankDirection.direction = 0x81;
        tank->_tankDirection.direction = 0b01111101;
        
        // 方法2：
        // tank->_tankDirection.left = YES; // YES 强转之后为 1，
        // tank->_tankDirection.top = 31; // 0 ～ 32
        // tank->_tankDirection.bottom = 0b1; // 二进制赋值
        
        NSLog(@"🐶🐶🐶 left = %@ top = %@ right = %@ bottom = %@", @(tank->_tankDirection.left), @(tank->_tankDirection.top), @(tank->_tankDirection.right), @(tank->_tankDirection.bottom));
    }
    
    return 0;
}
