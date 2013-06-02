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


- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:underlineStyle forKey:(NSString *)kCTUnderlineStyleAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addUnderline:underlineStyle range:range];
}


- (NSAttributedString *)addParagraphStyle:(id)paragraphStyle range:(NSRange)range
{
    [NSException raise:NSInternalInconsistencyException format:@"Not Implemented"];
    return self;
}

- (NSAttributedString *)addParagraphStyle:(id)paragraphStyle string:(NSString *)string
{
    [NSException raise:NSInternalInconsistencyException format:@"Not Implemented"];
    return self;
}


- (NSAttributedString *)addLigature:(NSNumber *)ligature range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:ligature forKey:(NSString *)kCTLigatureAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addLigature:(NSNumber *)ligature string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addLigature:ligature range:range];
}


- (NSAttributedString *)addKerning:(NSNumber *)kerning range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:kerning forKey:(NSString *)kCTKernAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addKerning:(NSNumber *)kerning string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addKerning:kerning range:range];
}


- (NSAttributedString *)addVerticalForms:(BOOL)verticalForms range:(NSRange)range
{
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:@(verticalForms) forKey:(NSString *)kCTVerticalFormsAttributeName];
    
    return [self addAttributes:attributes range:range];
}

- (NSAttributedString *)addVerticalForms:(BOOL)verticalForms string:(NSString *)string
{
    NSRange range = [[self string] rangeOfString:string];
    
    return [self addVerticalForms:verticalForms range:range];
}

@end
