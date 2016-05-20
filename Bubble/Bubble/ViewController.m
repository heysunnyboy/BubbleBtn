//
//  ViewController.m
//  Bubble
//
//  Created by yebaojia on 16/5/19.
//  Copyright © 2016年 Bubble. All rights reserved.
//

#import "ViewController.h"
#import "CGBubbleBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    // Do any additional setup after loading the view, typically from a nib.
    CGBubbleBtn *btn = [[CGBubbleBtn alloc]initWithFrame:CGRectMake((width - 200)/2, 100, 200, 80)];
    btn.backgroundColor = [UIColor blackColor];
    btn.layer.cornerRadius = 10;
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 2;
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
