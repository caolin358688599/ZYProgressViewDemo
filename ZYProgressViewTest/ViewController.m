//
//  ViewController.m
//  ZYProgressViewTest
//
//  Created by 王志盼 on 15/8/17.
//  Copyright (c) 2015年 王志盼. All rights reserved.
//

#import "ViewController.h"
#import "ZYProgressView.h"

@interface ViewController () <ZYProgressViewDataSource, ZYProgressViewDelegate>
@property (nonatomic, weak) ZYProgressView *progressView;
@property (nonatomic, strong) NSArray *titles;
@end

@implementation ViewController

- (NSArray *)titles
{
    if (_titles == nil) {
        _titles = @[@"菜鸟", @"码农", @"高级工程师", @"项目经理", @"CTO", @"迎娶白富美"];
    }
    return _titles;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZYProgressView *progressView = [[ZYProgressView alloc] init];
    progressView.frame = CGRectMake(0, 100, self.view.frame.size.width, 170);
    progressView.dataSource = self;
    progressView.delegate = self;
    //纯代码实现，这个方法可调，可不调。但是如果是通过xib创建，必须要调用此方法
    [progressView reloadData];
    self.progressView = progressView;
    [self.view addSubview:progressView];
    
    //显示到当前进度，从1开始
    self.progressView.currentProgress = 6;
    
    //中间跳过两个状态,注意，存放的值，要从1开始
    self.progressView.items = @[@(3),@(4)];
}

#pragma mark ----ZYProgressViewDataSource

//告诉progressView,总共要显示多少个进度
- (NSUInteger)numberOfProgressInProgressView
{
    return self.titles.count;
}

//告诉progressView，每个进度的title，索引从0开始
- (NSString *)progressView:(ZYProgressView *)progressView titleAtIndex:(NSUInteger)index
{
    return self.titles[index];
}

#pragma mark ----ZYProgressViewDelegate
- (UIColor *)highlightColorForCircleViewInProgressView:(ZYProgressView *)progressView
{
    return [UIColor yellowColor];
}
@end
