//
//  MTImagePickerProtocol.h
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MTImagePickerProtocol <NSObject>

- (void)imagePickerDidselectedImages:(NSArray*)images;

@end

NS_ASSUME_NONNULL_END
