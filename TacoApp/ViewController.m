//
//  ViewController.m
//  TacoApp
//
//  Created by School on 3/24/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)backgroudTap:(id)sender{
    [self.name resignFirstResponder];
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return NO;
}

-(IBAction)updateOzMeat:(id)sender{
    NSString *newLabel = [NSString stringWithFormat:@"%i",(int)self.ozMeat.value];
    NSLog(@"New Label: %@", newLabel);
    [self.ozMeatLabel setText: newLabel];
}

-(IBAction)toggleTacoType:(id)sender{
    if ([sender selectedSegmentIndex] == 1) {
        UIImage *image = [UIImage imageNamed:@"chickentaco.jpg"];
        [self.tacoPhoto setImage:image];
    } else {
        UIImage *image = [UIImage imageNamed:@"taco.png"];
        [self.tacoPhoto setImage:image];
    }
}

    -(IBAction)orderButtonPressed:(id)sender {
        NSLog(@"The order button was pressed");
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure you want to place this order??"
                                                                 delegate:self
                                                        cancelButtonTitle:@"No Way!"
                                                   destructiveButtonTitle:@"Yes, I'm Sure!"
                                                        otherButtonTitles:nil];
        [actionSheet showInView:self.view];
    }

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *meat = @"beef";
        NSString *guac = @"without";
        NSString *spicy = @"not";
        if (self.meatType.selectedSegmentIndex == 1)
            meat = @"chicken";
        if ([self.guacamole isOn])
            guac = @"with";
        if ([self.spiciness value] > .34)
            spicy = @"a little";
        if ([self.spiciness value] > .67)
            spicy = @"very";
        
        NSString *orderSummary = [NSString stringWithFormat:@"%@, you ordered a %@ taco %@ guacamole that is %@ spicy with %@ oz of meat",[self.name text], meat, guac, spicy,[self.ozMeatLabel text]];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Order Placed"
                                                                                  message:orderSummary
                                                                                 delegate:self cancelButtonTitle:@"Great!" otherButtonTitles:nil];
        [alert show]; }
    }


@end
