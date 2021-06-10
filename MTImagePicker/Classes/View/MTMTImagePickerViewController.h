//
//  MTMTImagePickerViewController.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <UIKit/UIKit.h>

#import "MTMTImagePickerModuleInterface.h"
#import "MTMTImagePickerViewInterface.h"

/**
 View controller for the MTImagePicker module.
 */
@interface MTMTImagePickerViewController : UIViewController <MTMTImagePickerViewInterface>

@property (nonatomic, strong) id<MTMTImagePickerModuleInterface> eventHandler;

// *** add UI events here

@end
