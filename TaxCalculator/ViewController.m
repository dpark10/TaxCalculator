//
//  ViewController.m
//  TaxCalculator
//
//  Created by dp on 3/6/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double sfTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    double price = [self.priceTextField.text doubleValue];
 
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0: {
            double result = price * self.sfTax;
            self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
            break;
        }
        case 1: {
            double result = price * self.chiTax;
            self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
            break;
        }
        case 2: {
            double result = price * self.nyTax;
            self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
            break;
        }
    }
}

@end
