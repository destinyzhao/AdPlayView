//
//  ViewController.m
//  AdPlayView
//
//  Created by Alex on 16/3/17.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "AdPlayView.h"

@interface ViewController ()

@property (strong, nonatomic)AdPlayView *adPlayView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initAdPlay];
}

- (void)initAdPlay
{
    _adPlayView = [[AdPlayView alloc]init];
    _adPlayView.frame = CGRectMake(0,0, self.view.frame.size.width, 160);
    _adPlayView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_adPlayView];

    NSArray *imagesURLStrings = @[
                                  @"http://p2.so.qhimg.com/t013314dfd21f1c9bf7.jpg",
                                  @"http://p4.so.qhimg.com/t010f4d848562ee4d89.jpg",
                                  @"http://p2.so.qhimg.com/t013314dfd21f1c9bf7.jpg",
                                  @"http://p4.so.qhimg.com/t010f4d848562ee4d89.jpg"
                                  ];
    _adPlayView.placeholderImage = @"ad_placeholder_Image";
    _adPlayView.imgsArray = imagesURLStrings;
    
    [_adPlayView tapActionBlock:^(NSInteger selectIndex) {
        NSLog(@"选择了---%ld",selectIndex);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
