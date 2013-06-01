//
//  NSAttributedString+Builder.m
//
//  Created by Mark Sands on 5/31/13.
//  Copyright (c) 2013 Mark Sands. All rights reserved.
//

#import "NSAttributedString+Builder.h"

@implementation NSAttributedString (Builder)

- (NSAttributedString *)addAttributes:(NSDictionary *)attributes range:(NSRange)range
{
    NSMutableAttributedString *mutableString = [self mutableCopy];
    
    if (range.location != NSNotFound) {
        for (NSString *key in [attributes allKeys]) {
            id value = attributes[key];
            [mutableString addAttribute:key value:value range:range];
        }
    }
    
    return [mutableString copy];
}


- (NSAttributedString *)addFont:(UIFont *)font range:(NSRange)range
{
    CTFontRef ctfont = CTFontCreateWithName((__bridge CFStringRef)font.fontName, font.pointSize, NULL);
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:(__bridge id)(ctfont) forKey:(NSString *)kCTFontAttributeName];
    CFRelease(ctfont);
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addFont:(UIFont *)font string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addFont:font range:range];
}


- (NSAttributedString *)addTextColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:(id)color.CGColor forKey:(NSString *)kCTForegroundColorAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addTextColor:(UIColor *)color string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addTextColor:color range:range];
}


- (NSAttributedString *)addStrokeColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:(id)color.CGColor forKey:(NSString *)kCTStrokeColorAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addStrokeColor:(UIColor *)color string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addStrokeColor:color range:range];
}


- (NSAttributedString *)addStrokeWidth:(NSNumber *)width range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:width forKey:(NSString *)kCTStrokeWidthAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addStrokeWidth:(NSNumber *)width string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addStrokeWidth:width range:range];
}

@end
