//
//  MTMTImagePickerWireframe.m
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import "MTMTImagePickerWireframe.h"

#import "MTPopHelperView.h"
#import "MTPickerMenuView.h"
@interface MTMTImagePickerWireframe ()


@property (nonatomic, strong) MTPickerMenuView * previewView;
@end

@implementation MTMTImagePickerWireframe

- (void)presentSelfFromViewController:(UIViewController *)viewController
{
    // save reference
    
    self.previewView= [[MTPickerMenuView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 368)];
    self.presenter = [[MTImagePickerPresenter alloc] init];
//    self.viewController = [[MTMTImagePickerViewController alloc] init];

    // view <-> presenter
    self.presenter.userInterface = self.previewView;
    self.previewView.eventHandler = self.presenter;

    // present controller
    // *** present self with RootViewController
//    [viewController presentViewController:self.viewController animated:YES completion:NULL];
   
    self.previewView.backgroundColor = [UIColor whiteColor];
    
    MTPopHelperView* helperView =   [[MTPopHelperView alloc]initWithFrame:viewController.view.bounds];
    [helperView showPopContentView:self.previewView];
    [viewController.view addSubview:helperView];
    [self.presenter setUpViews];
}



@end
