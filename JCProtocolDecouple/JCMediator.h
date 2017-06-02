//
//  JCMediator.h
//  JCProtocolDecouple
//
//  Created by chenjiangchuan on 2017/5/26.
//  Copyright © 2017年 Hori-GZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCMediator : NSObject

+ (void)mediatorJumpToViewController:(NSString *)callName parametes:(id)parametes;

@end
