//
//  main.m
//  HiddenMembers&DynamicDispatch
//
//  Created by K Y on 8/16/19.
//  Copyright © 2019 K Y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecretData.h"

void pressEnter(NSString *msg);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SecretData *dat = [[SecretData alloc] init];
        
        pressEnter(@"Press ENTER to access 'publicData'");
        printf("%s\n\n", [[dat publicData] UTF8String]);
        
        pressEnter(@"Press ENTER to access 'hiddenData'");
        NSString *hiddenData = [dat valueForKey:@"hiddenData"];
        printf("%s\n\n", [hiddenData UTF8String]);
        
        pressEnter(@"Press ENTER to call 'secretAction'");
        // does it have this method?
        SEL selector = NSSelectorFromString(@"secretAction");
        if ([dat respondsToSelector:selector] == YES) {
            // if yes, do it
            SEL selector = NSSelectorFromString(@"secretAction");
            IMP imp = [dat methodForSelector:selector];
            void (*func)(id, SEL) = (void *)imp;
            func(dat, selector);
        }
        printf("\n");
        
    }
    return 0;
}

void pressEnter(NSString *msg) {
    printf("%s", [msg UTF8String]);
    getc(stdin);
}
