/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 Mark Sands
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
#import "NSAttributedString+Builder.h"

@implementation NSAttributedString (Builder)

- (NSAttributedString *)addAttributes:(NSDictionary *)attributes range:(NSRange)range {
    NSMutableAttributedString *mutableString = [self mutableCopy];
    
    if (range.location != NSNotFound) {
        for (NSString *key in [attributes allKeys]) {
            id value = attributes[key];
            [mutableString addAttribute:key value:value range:range];
        }
    }
    
    return [mutableString copy];
}

- (NSAttributedString *)addFont:(UIFont *)font range:(NSRange)range {
    return [self addAttributes:@{NSFontAttributeName: font} range:range];
}

- (NSAttributedString *)addFont:(UIFont *)font string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addFont:font range:range];
}

- (NSAttributedString *)addTextColor:(UIColor *)color range:(NSRange)range {
    return [self addAttributes:@{NSForegroundColorAttributeName: color} range:range];
}

- (NSAttributedString *)addTextColor:(UIColor *)color string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addTextColor:color range:range];
}

- (NSAttributedString *)addStrokeColor:(UIColor *)color range:(NSRange)range {
    return [self addAttributes:@{NSStrokeColorAttributeName: color} range:range];
}

- (NSAttributedString *)addStrokeColor:(UIColor *)color string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addStrokeColor:color range:range];
}

- (NSAttributedString *)addStrokeWidth:(NSNumber *)width range:(NSRange)range {
    return [self addAttributes:@{NSStrokeWidthAttributeName: width} range:range];
}

- (NSAttributedString *)addStrokeWidth:(NSNumber *)width string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addStrokeWidth:width range:range];
}

- (NSAttributedString *)addUnderlineStyle:(NSNumber *)underlineStyle range:(NSRange)range {
    return [self addAttributes:@{NSUnderlineStyleAttributeName: underlineStyle} range:range];
}

- (NSAttributedString *)addUnderlineStyle:(NSNumber *)underlineStyle string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addUnderlineStyle:underlineStyle range:range];
}

- (NSAttributedString *)addParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range {
    return [self addAttributes:@{NSParagraphStyleAttributeName: paragraphStyle} range:range];
}

- (NSAttributedString *)addParagraphStyle:(NSParagraphStyle *)paragraphStyle string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addParagraphStyle:paragraphStyle range:range];
}

- (NSAttributedString *)addLigature:(NSNumber *)ligature range:(NSRange)range {
    return [self addAttributes:@{NSLigatureAttributeName: ligature} range:range];
}

- (NSAttributedString *)addLigature:(NSNumber *)ligature string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addLigature:ligature range:range];
}

- (NSAttributedString *)addKerning:(NSNumber *)kerning range:(NSRange)range {
    return [self addAttributes:@{NSKernAttributeName: kerning} range:range];
}

- (NSAttributedString *)addKerning:(NSNumber *)kerning string:(NSString *)string {
    NSRange range = [[self string] rangeOfString:string];
    return [self addKerning:kerning range:range];
}

@end