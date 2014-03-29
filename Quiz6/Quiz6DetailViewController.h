//
//  Quiz6DetailViewController.h
//  Quiz6
//
//  Created by Ryan on 3/28/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Task;

@interface Quiz6DetailViewController : UIViewController <UITextFieldDelegate>

// @property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) Task *detailItem;
@property (strong, nonatomic) void (^dismissBlock)(void);
@property (weak, nonatomic) IBOutlet UITextField *nameBox;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *dueDatePicker;

- (IBAction)saveTask:(id)sender;
- (IBAction)urgencyChanged:(id)sender;

@end
