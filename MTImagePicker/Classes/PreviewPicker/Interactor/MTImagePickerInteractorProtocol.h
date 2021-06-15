//
//  MTImagePickerInteractorProtocol.h
//  MTImagePicker
//
//  Created by Tom on 2021/6/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MTImagePickerInteractorInputProtocol <NSObject>

- (NSArray *)getImagesPrepared;
@end

@protocol MTImagePickerInteractorOutputProtocol <NSObject>

@end


NS_ASSUME_NONNULL_END
