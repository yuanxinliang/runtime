//
//  NSURL+Extension.m
//  runtime
//
//  Created by 袁鑫亮 on 2017/11/17.
//  Copyright © 2017年 yxl. All rights reserved.
//

#import "NSURL+Extension.h"
#import <objc/message.h>

@implementation NSURL (Extension)

+ (void)load {
    Method urlMethod = class_getClassMethod([self class], @selector(URLWithString:));
    Method yxl_urlMethod = class_getClassMethod([self class], @selector(yxl_URLWithString:));
    method_exchangeImplementations(urlMethod, yxl_urlMethod);
}

+ (instancetype)yxl_URLWithString:(NSString *)URLString {
    
    NSURL *url = [self yxl_URLWithString:URLString];
    if (url == nil) {
        /**
         在这里处理操作
         */
        NSLog(@"此链接为空...");
    }
    return url;
}

@end
