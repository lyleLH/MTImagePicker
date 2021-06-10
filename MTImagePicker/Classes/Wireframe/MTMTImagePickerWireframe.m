//
//  MTMTImagePickerWireframe.m
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import "MTMTImagePickerWireframe.h"
#import "MTMTImagePickerViewController.h"
#import "MTPopHelperView.h"
#import "MTPickerPreviewView.h"
@interface MTMTImagePickerWireframe ()

@property (nonatomic, strong) MTMTImagePickerViewController *viewController;
@property (nonatomic, strong) MTPickerPreviewView * previewView;
@end

@implementation MTMTImagePickerWireframe

- (void)presentSelfFromViewController:(UIViewController *)viewController
{
    // save reference
    self.viewController = [[MTMTImagePickerViewController alloc] init];

    // view <-> presenter
    self.presenter.userInterface = self.viewController;
    self.viewController.eventHandler = self.presenter;

    // present controller
    // *** present self with RootViewController
//    [viewController presentViewController:self.viewController animated:YES completion:NULL];
    self.previewView= [[MTPickerPreviewView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 340)];
    self.previewView.backgroundColor = [UIColor yellowColor];
    
    MTPopHelperView* helperView =   [[MTPopHelperView alloc]initWithFrame:viewController.view.bounds];
    [helperView showPopContentView:self.previewView];
    [viewController.view addSubview:helperView];
}



@end
