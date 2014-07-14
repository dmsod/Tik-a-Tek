//
//  MainViewController.m
//  PracticalTest
//
//  Created by Daniel Montoya on 2/06/2014.
//  Copyright (c) 2014 Daniel Montoya. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

- (IBAction)ReturnKey:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)calculate:(id)sender
{
    
    int a = ([adults.text floatValue]);
    double c = ([concessions.text floatValue]);
    double tot = (a*72.00) + (c*42.00);
    
    NSString *Na = name.text;
    NSString *Ad = adults.text;
    NSString *Co = concessions.text;
    
    //Name Validation
    
    if(Na.length >0 && Ad.length >0 && Co.length >0)
    {
        total.text = [[NSString alloc]initWithFormat:@"Total Price = $%0.2f", tot];
    }
    else
    {
        UIAlertView *Lenth_alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must provide valid data" delegate:self cancelButtonTitle:@"No worries mate I'll fix that" otherButtonTitles:nil, nil];
        [Lenth_alert show];
    }
    }


- (IBAction)reset:(id)sender
{
    name.text=@"";
    adults.text=@"";
    concessions.text=@"";
    total.text=@"";
}

@end
