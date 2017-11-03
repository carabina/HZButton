//
//  ViewController.m
//  HZCommonButtonDemo
//
//  Created by Andyzzhz on 2017/11/3.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "HZCommonButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HZCommonButton *commonButton = [[HZCommonButton alloc] init];
    [self.view addSubview:commonButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
