//
//  ViewController.m
//  Currency Limited
//
//  Created by Aditya Nanda Purnama on 10/10/15.
//  Copyright (c) 2015 Aditya Nanda Purnama. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *Req;
@property (weak, nonatomic) IBOutlet UITextField *InputField;
@property (weak, nonatomic) IBOutlet UIButton *ConvertButton;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyEuro;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyYen;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyPounds;

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
- (IBAction)ConvertTapped:(id)sender {
    self.ConvertButton.enabled=NO;
    self.Req=[[CRCurrencyRequest alloc]init];
    self.Req.delegate=self;
    [self.Req start];
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies{
    self.ConvertButton.enabled=YES;
    
    double input=[self.InputField.text doubleValue];
    
    double euro=input*currencies.EUR;
    double yen=input*currencies.JPY;
    double gbp=input*currencies.GBP;
    
    self.CurrencyEuro.text=[NSString stringWithFormat:@"%.2f",euro];
    self.CurrencyYen.text=[NSString stringWithFormat:@"%.2f",yen];
    self.CurrencyPounds.text=[NSString stringWithFormat:@"%.2f",gbp];
}

@end
