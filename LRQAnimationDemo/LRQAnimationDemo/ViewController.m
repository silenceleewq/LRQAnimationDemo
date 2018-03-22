//
//  ViewController.m
//  LRQAnimationDemo
//
//  Created by lirenqiang on 22/03/2018.
//  Copyright © 2018 lirenqiang. All rights reserved.
//

#import "ViewController.h"
#import <UIView+DCAnimationKit.h>
#import <Masonry.h>
@interface ViewController ()
@property (strong, nonatomic) UIView *animateView;
@property (strong, nonatomic) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton new];
//    UILabel *label = [UILabel new];
    
    NSLog(@"%zd", [button isKindOfClass:[UIView class]]);
    NSLog(@"%zd", [button isMemberOfClass:[UIView class]]);
}

- (void)testDC {
    self.animateView = [UIView new];
//    self.animateView.backgroundColor = [UIColor redColor];
    setBackgroundColor(self.animateView, [UIColor redColor]);
    
    
    self.label = [UILabel new];
    self.label.text = @"LRQLabel";
    self.label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:self.animateView];
    [self.view addSubview:self.label];
    
    [self.animateView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(150);
        make.top.mas_equalTo(150);
        make.centerX.mas_equalTo(self.view);
    }];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.centerX.mas_equalTo(self.animateView);
        make.top.mas_equalTo(self.animateView.mas_bottom).mas_offset(30);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.animateView tada:nil];
    [self.label tada:nil];
}

void setBackgroundColor(UIView *view, UIColor *color) {
    view.backgroundColor = color;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
