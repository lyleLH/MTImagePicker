//
//  MTViewController.m
//  MTImagePicker
//
//  Created by v2top1@163.com on 06/10/2021.
//  Copyright (c) 2021 v2top1@163.com. All rights reserved.
//

#import "MTViewController.h"
#import <MTImagePicker/MTImagePickerHeader.h>
@interface MTViewController ()

@end

@implementation MTViewController

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

- (IBAction)pickImageButtonAction:(id)sender {
   [[[MTImagePicker alloc] init] showImagePickerInViewController:self withDelegate:self];
}

- (void)imagePickerDidselectedImages:(NSArray*)images {
    
}


@end
