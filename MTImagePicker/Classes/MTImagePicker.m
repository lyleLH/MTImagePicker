//
//  MTImagePicker.m
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import "MTImagePicker.h"
#import "MTMTImagePickerWireframe.h"
@implementation MTImagePicker


- (void)showImagePickerInViewController:(UIViewController*)vc withDelegate:(id)delegate {
    MTMTImagePickerWireframe * wireframe  = [[MTMTImagePickerWireframe alloc]init];
    [wireframe presentSelfFromViewController:vc];
}


@end
