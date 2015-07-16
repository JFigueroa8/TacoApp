//
//  ViewController.h
//  TacoApp
//
//  Created by School on 3/24/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *tacoPhoto;
@property (strong, nonatomic) IBOutlet UISlider *spiciness;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UISwitch *guacamole;
@property (strong, nonatomic) IBOutlet UISegmentedControl *meatType;
@property (strong, nonatomic) IBOutlet UIStepper *ozMeat;
@property (strong, nonatomic) IBOutlet UILabel *ozMeatLabel;
@property (strong, nonatomic) IBOutlet UIButton *orderButton;

-(IBAction)updateOzMeat:(id)sender;
-(IBAction)toggleTacoType:(id)sender;
-(IBAction)backgroudTap:(id)sender;
-(IBAction)orderButtonPressed:(id)sender;
-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;
@end
