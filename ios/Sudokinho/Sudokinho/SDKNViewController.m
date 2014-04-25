//
//  SDKNViewController.m
//  Sudokinho
//
//  Created by Thiago Lopes on 4/24/14.
//  Copyright (c) 2014 Thiago Lopes. All rights reserved.
//

#import "SDKNViewController.h"

@interface SDKNViewController ()

@end

@implementation SDKNViewController

@synthesize label;

-(IBAction)generateSudoku:(id)sender
{
    label.text = @"diferente!";
}

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

@end
