//
//  UIView+RoundedCorner.h
//  RunloopTestDemo
//
//  Created by 梁炜杰 on 2019/5/8.
//  Copyright © 2019 richard. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (RoundedCorner)

- (void)addRoundedCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor backgroundColor:(UIColor *)backgroundColor;

- (UIImage *)createRoundedImageWithCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor backgroundColor:(UIColor *)backgroundColor;

@end
