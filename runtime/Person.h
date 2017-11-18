//
//  Person.h
//  runtime
//
//  Created by 袁鑫亮 on 2017/11/18.
//  Copyright © 2017年 yxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    /**
     成员变量
     */
    NSInteger   _age;
    NSString    *_gender;
}

/**
 属性
 */
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *identyfier;

/**
 方法
 */

- (void)eatByFood:(NSString *)food;

+ (void)run;

+ (void)walk;

@end
