//
// Created by azu on 2014/07/23.
//


#import "UIImage+TeenyImage.h"


static BOOL TeenyImage_isIphone5 = NO;
static BOOL TeenyImage_calculatedScreenSize = NO;


@implementation UIImage (TeenyImage)
+ (instancetype)teenyImagedNamed:(NSString *) name {
    return [UIImage imageNamed:[self resolvedFileName:name]];
}

+ (NSString *)resolvedFileName:(NSString *) name {
    if (!TeenyImage_calculatedScreenSize) {
        const CGSize screenSize = [UIScreen mainScreen].bounds.size;
        const CGFloat screenHeight = MAX(screenSize.width, screenSize.height);

        TeenyImage_isIphone5 = (screenHeight == 568.0f);
        TeenyImage_calculatedScreenSize = YES;
    };
    if (TeenyImage_isIphone5) {
        NSString *imageExtension = [name pathExtension];
        NSString *imageNameWithoutExtension = [name stringByDeletingPathExtension];
        NSString *tallerImageName = [imageNameWithoutExtension stringByAppendingString:@"-568h"];
        NSString *filePath = [NSString stringWithFormat:@"%@@2x.%@",
                                                        tallerImageName,
                                                        imageExtension ?: @""
        ];
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:filePath ofType:nil];
        if (imagePath) {
            return tallerImageName;
        }
    }
    return name;
}
@end