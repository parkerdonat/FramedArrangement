//
//  PDViewController.m
//  FramedArrangement
//
//  Created by Parker Donat on 4/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PDViewController.h"

@interface PDViewController ()

@end

@implementation PDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.redView = [[UIView alloc]init];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [[UIView alloc]init];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [[UIView alloc]init];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];

    self.yellowView = [[UIView alloc]init];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    //[self layoutSquares];
    //[self layoutVerticalRectangles];
    //[self layoutHorizontalRectangles];
    [self layoutDiagonalSquares];
}

- (void) layoutSquares {
    self.redView.frame = CGRectMake(20, 100, 100, 100);
    self.greenView.frame = CGRectMake(120, 100, 100, 100);
    self.blueView.frame = CGRectMake(20, 200, 100, 100);
    self.yellowView.frame = CGRectMake(120, 200, 100, 100);
}

- (void) layoutHorizontalRectangles {
    self.redView.frame = CGRectMake(0, 0, 300, 100);
    self.greenView.frame = CGRectMake(0, 100, 300, 100);
    self.blueView.frame = CGRectMake(0, 200, 300, 100);
    self.yellowView.frame = CGRectMake(0, 300, 300, 100);
}

- (void) layoutVerticalRectangles {
    // how to find the width
    // self.redView.frame = CGRectMake(0, 100, self.view.frame.size.width, 100);
    // NSLog(@"%f", self.view.frame.size.width);
    
    self.redView.frame = CGRectMake(0, 0, 80, 300);
    self.greenView.frame = CGRectMake(80, 0, 80, 300);
    self.blueView.frame = CGRectMake(160, 0, 80, 300);
    self.yellowView.frame = CGRectMake(240, 0, 80, 300);
}

- (void) layoutDiagonalSquares {
    self.redView.frame = CGRectMake(0, 0, 100, 100);
    self.greenView.frame = CGRectMake(100, 100, 100, 100);
    self.blueView.frame = CGRectMake(200, 200, 100, 100);
    self.yellowView.frame = CGRectMake(300, 300, 100, 100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
