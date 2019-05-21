//
//  UIView+RoundedCorner.m
//  RunloopTestDemo
//
//  Created by 梁炜杰 on 2019/5/8.
//  Copyright © 2019 richard. All rights reserved.
//

#import "UIView+RoundedCorner.h"
#define kAddRoundedCorner 99998

@implementation UIView (RoundedCorner)

- (void)addRoundedCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor backgroundColor:(UIColor *)backgroundColor{
    if (self.subviews.firstObject
        && [self.subviews.firstObject isKindOfClass:[UIImageView class]]
        && self.subviews.firstObject.tag == kAddRoundedCorner) {
        return;
    }
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[self createRoundedImageWithCorner:radius borderWidth:borderWidth borderColor:borderColor backgroundColor:backgroundColor]];
    imageView.tag = kAddRoundedCorner;
    [self insertSubview:imageView atIndex:0];
}

- (UIImage *)createRoundedImageWithCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor backgroundColor:(UIColor *)backgroundColor{
    CGRect rect = self.bounds;
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    CGFloat minx = CGRectGetMinX(rect);
    CGFloat midx = CGRectGetMidX(rect);
    CGFloat maxx = CGRectGetMaxX(rect);
    CGFloat miny = CGRectGetMinY(rect);
    CGFloat midy = CGRectGetMidY(rect);
    CGFloat maxy = CGRectGetMaxY(rect);
    CGContextMoveToPoint(context, minx, midy);
    CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
    CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
    CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
    CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
    CGContextDrawPath(context, kCGPathFillStroke);
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return output;
}

@end
