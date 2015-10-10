//
//  ViewController.m
//  Time Converter
//
//  Created by Aditya Nanda Purnama on 10/5/15.
//  Copyright (c) 2015 Aditya Nanda Purnama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

int convert(int day, int index)
{
    if(index==0)
        return day*86400;
    else if(index==1)
        return day*1440;
    else return day*24;
}

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    int input=[self.inputField.text intValue];
    if (self.segmentController.selectedSegmentIndex==0) {
        self.outputField.text=[NSString stringWithFormat:@"%d",convert(input, self.segmentController.selectedSegmentIndex)];
    }
    else if(self.segmentController.selectedSegmentIndex==1)
    {
                self.outputField.text=[NSString stringWithFormat:@"%d",convert(input, self.segmentController.selectedSegmentIndex)];
    }
    else
    {
                self.outputField.text=[NSString stringWithFormat:@"%d",convert(input, self.segmentController.selectedSegmentIndex)];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
