//
//  JCProtocol.h
//  JCProtocolDecouple
//
//  Created by chenjiangchuan on 2017/5/26.
//  Copyright © 2017年 Hori-GZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCRegisted.h"

@protocol JCProtocol <NSObject>

@required
+ (id)createNewObjectWithParametes:(id)parametes;

@end
