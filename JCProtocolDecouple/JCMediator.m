//
//  JCMediator.m
//  JCProtocolDecouple
//
//  Created by chenjiangchuan on 2017/5/26.
//  Copyright © 2017年 Hori-GZ. All rights reserved.
//

#import "JCMediator.h"
#import "JCProtocol.h"

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@implementation JCMediator

+ (void)mediatorJumpToViewController:(NSString *)callName parametes:(id)parametes {
    Class <JCProtocol> receiveClass = NSClassFromString(callName);
    if (class_conformsToProtocol(receiveClass, @protocol(JCProtocol))) {
        id receiveObject = [receiveClass createNewObjectWithParametes:parametes];
        if (receiveObject && [receiveObject isKindOfClass:[UIViewController class]]) {
            UIViewController *rootVC = [[UIApplication sharedApplication].delegate window].rootViewController;
            if ([rootVC isKindOfClass:[UINavigationController class]]) {
                [((UINavigationController *)rootVC) pushViewController:receiveObject animated:YES];
            } else {
                [rootVC presentViewController:receiveObject animated:YES completion:nil];
            }
        }
    }
}

@end
