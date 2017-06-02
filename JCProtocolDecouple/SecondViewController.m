//
//  SecondViewController.m
//  JCProtocolDecouple
//
//  Created by chenjiangchuan on 2017/5/26.
//  Copyright © 2017年 Hori-GZ. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

/**  */
@property (strong, nonatomic) NSString *paramete;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor orangeColor]];
    NSLog(@"secondViewController.paramete = %@", self.paramete);
}

#pragma mark - JCProtocol

+ (id)createNewObjectWithParametes:(id)parametes {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.paramete = parametes;
    return secondVC;
}

@end
