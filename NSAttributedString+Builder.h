//
//  NSAttributedString+Builder.h
//
//  Created by Mark Sands on 5/31/13.
//  Copyright (c) 2013 Mark Sands. All rights reserved.
//

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

@end
