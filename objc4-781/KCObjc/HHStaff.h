//
//  HHStaff.h
//  KCObjc
//
//  Created by CHM on 2020/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHStaff : NSObject

//{
////    // Class isa; 补0 偏0 长8 //在 继承的 NSObject 中还有一个 Class isa; 成员变量
////    int _age; // 补0 偏8 长12
////    int _height; // 补0 偏12 长16
////    NSString *_name; // 补0 偏16 长24
//
//    // Class isa; // 补0 偏0 长8
////    int _age; // 补0 偏8 长12
////    NSString *_name; // 补4 偏16 长24
////    int _height; // 补0 偏24 长28 然后结构体整体对齐是 32
//
//    NSString *_strb;
//    NSString *_stra;
//    NSString *_stringc;
//}

//@property (nonatomic, copy) NSString *b;
//@property (nonatomic, assign) NSString *a;
//@property (nonatomic, assign) char c;

//@property (nonatomic, assign) int age;
//@property (nonatomic, copy) NSString *name;
//@property (nonatomic, assign) int height;

//{
//    NSString *name;
//}
//
//- (void)doInstanceStaffWork; // 对象方法
//+ (void)doClassStaffWord; // 类方法

@end

NS_ASSUME_NONNULL_END
