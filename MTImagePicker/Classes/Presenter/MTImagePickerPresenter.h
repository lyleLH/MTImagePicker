//
//  MTImagePickerPresenter.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>



#import <MTImagePickerViewInterface.h>
@class MTMTImagePickerWireframe;
@class MTMTImagePickerInteractor;

/**
 Display logic for the MTImagePicker module.
 */
@interface MTImagePickerPresenter : NSObject <MTImagePickerViewInputInterface>

@property (nonatomic, strong) MTMTImagePickerInteractor *interactor;
@property (nonatomic, weak) MTMTImagePickerWireframe *wireframe;

@property (nonatomic, weak) UIViewController<MTImagePickerViewOutputInterface> *userInterface;

@end
