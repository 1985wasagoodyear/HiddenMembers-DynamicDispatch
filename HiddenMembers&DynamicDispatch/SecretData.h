//
//  SecretData.h
//  KVC+KVO Example
//
//  Created by Kevin Yu on 12/26/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecretData : NSObject

/// publicly exposed and available via dot-notation
@property (nonatomic, assign) NSString *publicData;

@end

NS_ASSUME_NONNULL_END
