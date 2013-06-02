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
    NSDictionary *attributes = @{NSFontAttributeName: font};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addFont:(UIFont *)font string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addFont:font range:range];
}


- (NSAttributedString *)addTextColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attributes = @{NSForegroundColorAttributeName: color};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addTextColor:(UIColor *)color string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addTextColor:color range:range];
}


- (NSAttributedString *)addStrokeColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attributes = @{NSStrokeColorAttributeName: color};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addStrokeColor:(UIColor *)color string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addStrokeColor:color range:range];
}


- (NSAttributedString *)addStrokeWidth:(NSNumber *)width range:(NSRange)range
{
    NSDictionary *attributes = @{NSStrokeWidthAttributeName: width};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addStrokeWidth:(NSNumber *)width string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addStrokeWidth:width range:range];
}


- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle range:(NSRange)range
{
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: underlineStyle};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addUnderline:underlineStyle range:range];
}


- (NSAttributedString *)addParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range
{
    NSDictionary *attributes = @{NSParagraphStyleAttributeName: paragraphStyle};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addParagraphStyle:(NSParagraphStyle *)paragraphStyle string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addParagraphStyle:paragraphStyle range:range];
}


- (NSAttributedString *)addLigature:(NSNumber *)ligature range:(NSRange)range
{
    NSDictionary *attributes = @{NSLigatureAttributeName: ligature};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addLigature:(NSNumber *)ligature string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addLigature:ligature range:range];
}


- (NSAttributedString *)addKerning:(NSNumber *)kerning range:(NSRange)range
{
    NSDictionary *attributes = @{NSKernAttributeName: kerning};
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addKerning:(NSNumber *)kerning string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addKerning:kerning range:range];
}

@end
