//
//  Quiz6DetailViewController.m
//  Quiz6
//
//  Created by Ryan on 3/28/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import "Quiz6DetailViewController.h"
#import "Task.h"

@interface Quiz6DetailViewController ()
- (void)configureView;
@end

@implementation Quiz6DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.nameBox.text = self.detailItem.taskName;
        self.urgencySlider.value = self.detailItem.urgency;
        self.dueDatePicker.date = self.detailItem.dueDate;
        self.urgencyLabel.text = [NSString stringWithFormat:@"Urgency: %.0f", [self.urgencySlider value]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveTask:(id)sender
{
    self.detailItem.taskName = [self.nameBox text];
    self.detailItem.urgency = [self.urgencySlider value];
    self.detailItem.dueDate = [self.dueDatePicker date];
    
    [self dismissViewControllerAnimated:YES completion:self.dismissBlock];
}

- (IBAction)urgencyChanged:(id)sender
{
    self.urgencyLabel.text = [NSString stringWithFormat:@"Urgency: %.0f", [self.urgencySlider value]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.nameBox resignFirstResponder];
    return YES;
}

@end
