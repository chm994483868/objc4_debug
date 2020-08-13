//
//  BackupTestMessage.m
//  KCObjc
//
//  Created by CHM on 2020/8/13.
//

#import "BackupTestMessage.h"

@implementation BackupTestMessage

- (void)testFunction {
    NSLog(@"🐮🐮🐮 BackupTestMessage 内部: %s", __FUNCTION__);
}

- (void)changeFunction:(NSString *)parm {
    NSLog(@"🐡🐡🐡 BackupTestMessage 内部: %s parm = %@", __FUNCTION__, parm);
}

@end
