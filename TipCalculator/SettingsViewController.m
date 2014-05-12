//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by piyush shah on 5/12/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTip;

- (IBAction)defaultTip:(id)sender;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultTipIndex = [defaults integerForKey:@"defaultTip"];
    
    self.defaultTip.selectedSegmentIndex = defaultTipIndex;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)defaultTip:(id)sender {
    
    NSLog(@"got segment %d", self.defaultTip.selectedSegmentIndex);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTip.selectedSegmentIndex forKey:@"defaultTip"];
    [defaults synchronize];
}
@end
