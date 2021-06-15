//
//  MTImagePicker.m
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import "MTImagePicker.h"
#import "MTImagePickerWireframe.h"
@implementation MTImagePicker


- (void)showImagePickerInViewController:(UIViewController*)vc withDelegate:(id)delegate {
    MTImagePickerWireframe * wireframe  = [[MTImagePickerWireframe alloc]init];
    [wireframe presentSelfFromViewController:vc];
}


@end
