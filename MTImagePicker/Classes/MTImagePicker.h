//
//  MTImagePicker.h
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTImagePicker : NSObject
- (void)showImagePickerInViewController:(UIViewController*)vc withDelegate:(id)delegate;
@end

NS_ASSUME_NONNULL_END
