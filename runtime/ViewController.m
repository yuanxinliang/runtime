//
//  ViewController.m
//  runtime
//
//  Created by 袁鑫亮 on 2017/11/17.
//  Copyright © 2017年 yxl. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import "Person.h"
#import "Person+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    unsigned int count;
//    //属性列表
//    objc_property_t *propertyList = class_copyPropertyList([Person class], &count);
//    //打印出每个属性的名称
//    for (unsigned int i = 0; i < count; i++) {
//        const char *propertyName = property_getName(propertyList[i]);
//        NSLog(@"PropertyName -- %@", [NSString stringWithUTF8String:propertyName]);
//    }
//
//    //成员变量列表
//    Ivar *ivarList = class_copyIvarList([Person class], &count);
//    //打印每个成员变量的名称
//    for (unsigned int i = 0; i < count; i++) {
//        const char *ivarName = ivar_getName(ivarList[i]);
//        NSLog(@"IvarName -- %@", [NSString stringWithUTF8String:ivarName]);
//    }
//
//
//    //方法列表
//    Method *methodList = class_copyMethodList([Person class], &count);
//    //打印每个方法的名称
//    for (unsigned int i = 0; i < count; i++) {
//        Method method = methodList[i];
//        SEL method_sel = method_getName(method);
//        NSLog(@"MethodName -- %@", NSStringFromSelector(method_sel));
//    }
//
//    Method runMethod = class_getClassMethod([Person class], @selector(run));
//    Method walkMethod = class_getClassMethod([Person class], @selector(walk));
//    method_exchangeImplementations(runMethod, walkMethod);
//
//    Method eatMethod = class_getInstanceMethod([Person class], @selector(eatByFood:));
    
//    Person *p = [[Person alloc] init];
//    [p setOccupation:@"iOS开发工程师"];
//    NSLog(@"%@", p.occupation);
    
//    Person *p = [[Person alloc] init];
//    [p performSelector:@selector(study:) withObject:@(8)];
    
//    [Person run];
//    [Person walk];
    
    //url 中包含中文
    NSURL *url = [NSURL URLWithString:@"www.baidu.com/百度"];
    NSLog(@"%@", url);
}


@end
