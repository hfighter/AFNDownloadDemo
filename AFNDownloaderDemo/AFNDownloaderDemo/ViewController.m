//
//  ViewController.m
//  AFNDownloaderDemo
//
//  Created by honghui on 16/12/21.
//  Copyright © 2016年 honghui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UILabel *rateLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UILabel *tintLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;

@end

@implementation ViewController
{
    NSMutableArray *_urlArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tintLabel.hidden = NO;
    [self getUrlArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onStart:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)onStop:(id)sender {
    NSLog(@"%s", __func__);
}

- (NSArray *)getUrlArray {
    if (!_urlArray) {
        _urlArray = [[NSMutableArray alloc] init];
    } else {
        [_urlArray removeAllObjects];
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:@"url" ofType:@"plist"];
    _urlArray = [NSMutableArray arrayWithContentsOfFile:path];
    return _urlArray;
}

@end
