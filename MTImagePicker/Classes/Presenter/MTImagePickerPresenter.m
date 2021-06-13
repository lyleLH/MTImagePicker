//
//  MTImagePickerPresenter.m
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import "MTImagePickerPresenter.h"
#import "MTImagePickerInteractor.h"
#import "MTMTImagePickerWireframe.h"

@implementation MTImagePickerPresenter

 
- (void)setUpViews {
    [self.userInterface reloadViewContent:[self.interactor getImagesPrepared]];
}



- (MTImagePickerInteractor<MTImagePickerInteractorInputProtocol> *)interactor {
    if(!_interactor){
        _interactor = [[MTImagePickerInteractor alloc] init];
    }
    return _interactor;
    }
@end
