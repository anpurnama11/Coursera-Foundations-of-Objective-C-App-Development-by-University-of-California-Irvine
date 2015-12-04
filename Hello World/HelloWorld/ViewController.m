//
//  ViewController.m
//  HelloWorld
//
//  Created by Aditya Nanda Purnama on 9/22/15.
//  Copyright (c) 2015 Aditya Nanda Purnama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *TestLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)TestButtonTapped:(id)sender {
    self.TestLabel.text=@"It worked";
}

@end
