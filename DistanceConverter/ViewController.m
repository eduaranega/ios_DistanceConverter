//
//  ViewController.m
//  DistanceConverter
//  Created by Eduardo Aranega on 4/25/16.

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *unitToConvert;
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectedUnit;
@property (weak, nonatomic) IBOutlet UILabel *convertedResult;
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

// function to convert meters to milimeters
double meters2mm(double meters) {
    return (meters * 1000);
}

// function to convert meters to centimeters
double meters2cm(double meters) {
    return (meters * 100);
}

// function to convert meters to kilometers
double meters2km(double meters) {
    return (meters / 1000);
}

- (IBAction)tappedUpdateButton:(id)sender {

    switch (self.selectedUnit.selectedSegmentIndex) {
        //meters2mm
        case 0: self.convertedResult.text = [NSString stringWithFormat:@"%f.2",
                                             meters2mm(self.unitToConvert.text.doubleValue)];
                break;
        //meters2cm
        case 1: self.convertedResult.text = [NSString stringWithFormat:@"%f.2",
                                             meters2cm(self.unitToConvert.text.doubleValue)];
            break;
        //meters2km
        case 2: self.convertedResult.text = [NSString stringWithFormat:@"%f.2",
                                             meters2km(self.unitToConvert.text.doubleValue)];
            break;
    }
}
@end
