//
//  MainViewController.h
//  PracticalTest
//
//  Created by Daniel Montoya on 2/06/2014.
//  Copyright (c) 2014 Daniel Montoya. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *adults;
    IBOutlet UITextField *concessions;
    IBOutlet UILabel *total;
}

- (IBAction)ReturnKey:(id)sender;
- (IBAction)calculate:(id)sender;
- (IBAction)reset:(id)sender;


@end
