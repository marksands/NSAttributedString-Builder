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
#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>

@interface NSAttributedString (Builder)

- (NSAttributedString *)addAttributes:(NSDictionary *)attributes range:(NSRange)range;

- (NSAttributedString *)addFont:(UIFont *)font range:(NSRange)range;
- (NSAttributedString *)addFont:(UIFont *)font string:(NSString *)string;

- (NSAttributedString *)addTextColor:(UIColor *)color range:(NSRange)range;
- (NSAttributedString *)addTextColor:(UIColor *)color string:(NSString *)string;

- (NSAttributedString *)addStrokeColor:(UIColor *)color range:(NSRange)range;
- (NSAttributedString *)addStrokeColor:(UIColor *)color string:(NSString *)string;

- (NSAttributedString *)addStrokeWidth:(NSNumber *)width range:(NSRange)range;
- (NSAttributedString *)addStrokeWidth:(NSNumber *)width string:(NSString *)string;

- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle range:(NSRange)range;
- (NSAttributedString *)addUnderline:(NSNumber *)underlineStyle string:(NSString *)string;

- (NSAttributedString *)addParagraphStyle:(id)paragraphStyle range:(NSRange)range;
- (NSAttributedString *)addParagraphStyle:(id)paragraphStyle string:(NSString *)string;

- (NSAttributedString *)addLigature:(NSNumber *)ligature range:(NSRange)range;
- (NSAttributedString *)addLigature:(NSNumber *)ligature string:(NSString *)string;

- (NSAttributedString *)addKerning:(NSNumber *)kerning range:(NSRange)range;
- (NSAttributedString *)addKerning:(NSNumber *)kerning string:(NSString *)string;

- (NSAttributedString *)addVerticalForms:(BOOL)verticalForms range:(NSRange)range;
- (NSAttributedString *)addVerticalForms:(BOOL)verticalForms string:(NSString *)string;

@end
