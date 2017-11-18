//
//  Person+Extension.m
//  runtime
//
//  Created by 袁鑫亮 on 2017/11/18.
//  Copyright © 2017年 yxl. All rights reserved.
//

#import "Person+Extension.h"
#import <objc/message.h>

@implementation Person (Extension)

static const char *OccupationKey = "OccupationKey";

- (void)setOccupation:(NSString *)occupation {
    objc_setAssociatedObject(self, OccupationKey, occupation, OBJC_ASSOCIATION_ASSIGN);
}

- (NSString *)occupation {
    return objc_getAssociatedObject(self, OccupationKey);
}

@end
