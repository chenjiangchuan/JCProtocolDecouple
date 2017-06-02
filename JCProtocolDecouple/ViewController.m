//
//  ViewController.m
//  JCProtocolDecouple
//
//  Created by chenjiangchuan on 2017/5/26.
//  Copyright © 2017年 Hori-GZ. All rights reserved.
//

#import "ViewController.h"
#import "JCMediator.h"

@interface ViewController ()

@property (strong, nonatomic) NSString *paramete;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"vc.paramete = %@", self.paramete);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [JCMediator mediatorJumpToViewController:kJCSecondViewController parametes:@"从viewcontroller传过来的参数"];
}

#pragma mark - JCProtocol

+ (id)createNewObjectWithParametes:(id)parametes {
    ViewController *vc = [[ViewController alloc] init];
    
    return vc;
}

@end
