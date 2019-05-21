//
//  ViewController.m
//  UIViewRoundedCornerDemo
//
//  Created by 梁炜杰 on 2019/5/21.
//  Copyright © 2019 richard. All rights reserved.
//

#import "ViewController.h"
#import "UIView+RoundedCorner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(50, 200, 200, 300);
    [view addRoundedCorner:10 borderWidth:0 borderColor:[UIColor whiteColor] backgroundColor:[UIColor redColor]];
    
    [self.view addSubview:view];
}


@end
