//
//  SecretData.m
//  KVC+KVO Example
//
//  Created by Kevin Yu on 12/26/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

#import "SecretData.h"

@interface SecretData ()

/// cannot be accessed externally via dot-notation
@property (nonatomic, strong) NSString *hiddenData;

@end

@implementation SecretData

- (instancetype)init {
    self = [super init];
    if (self) {
        // set up default values
        _hiddenData = @"Secret Info, do not share.";
        _publicData = @"Public Info, please do share.";
    }
    return self;
}

- (void)secretAction {
    NSLog(@"This is my secret method!");
}

@end
