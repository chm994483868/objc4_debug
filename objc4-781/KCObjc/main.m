//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "LGPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSObject *objc1 = [[NSObject alloc] init];
        LGPerson *objc2 = [[LGPerson alloc] init];

        NSLog(@"🎉🎉🎉 Hello, World! \nobjc1 = %@ \nobjc2 = %@ \n",objc1, objc2);
        
        
    }
    return 0;
}
