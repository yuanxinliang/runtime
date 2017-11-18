//
//  Person.m
//  runtime
//
//  Created by 袁鑫亮 on 2017/11/18.
//  Copyright © 2017年 yxl. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>

@implementation Person

+ (void)load {
    Method runMethod = class_getClassMethod(self, @selector(run));
    Method walkMethod = class_getClassMethod(self, @selector(walk));
    method_exchangeImplementations(runMethod, walkMethod);
}

- (void)eatByFood:(NSString *)food {
    NSLog(@"吃%@", food);
}

+ (void)run {
    NSLog(@"跑步");
}

+ (void)walk {
    NSLog(@"走路");
}

/**
 当 Runtime 系统在 Cache 和类的方法列表(包括父类)中找不到要执行的方法时，
 Runtime 会调用 resolveInstanceMethod: 或 resolveClassMethod: 来给我们一次动态添加方法实现的机会。
 我们需要用 class_addMethod 函数完成向特定类添加特定方法实现的操作：
 */
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if ([NSStringFromSelector(sel) isEqualToString:@"study:"]) {
        class_addMethod(self, sel, (IMP)custom_study_method, "v@:@");
    }
    return [super resolveInstanceMethod:sel];
}

void custom_study_method(id self, SEL _cmp, id hour) {
    NSLog(@"学习了%@小时", hour);
}

@end
