//
//  SDKNViewController.h
//  Sudokinho
//
//  Created by Thiago Lopes on 4/24/14.
//  Copyright (c) 2014 Thiago Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDKNViewController : UIViewController

    -(IBAction)generateSudoku:(id)sender;
    @property (weak,nonatomic) IBOutlet UILabel *label;

@end
