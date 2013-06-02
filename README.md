# NSAttributedString+Builder

With TTTAttributedLabel, instead of this:

```objective-c
[label setText:text afterInheritingLabelAttributesAndConfiguringWithBlock:^ NSMutableAttributedString *(NSMutableAttributedString *mutableAttributedString) {
  NSRange boldRange = [[mutableAttributedString string] rangeOfString:@"ipsum dolar" options:NSCaseInsensitiveSearch];
  NSRange underlineRange = [[mutableAttributedString string] rangeOfString:@"sit amet" options:NSCaseInsensitiveSearch];

  // Core Text APIs use C functions without a direct bridge to UIFont. See Apple's "Core Text Programming Guide" to learn how to configure string attributes.
  UIFont *boldSystemFont = [UIFont boldSystemFontOfSize:14];
  CTFontRef font = CTFontCreateWithName((__bridge CFStringRef)boldSystemFont.fontName, boldSystemFont.pointSize, NULL);
  if (font) {
    [mutableAttributedString addAttribute:(NSString *)kCTFontAttributeName value:(id)font range:boldRange];
    [mutableAttributedString addAttribute:(NSString *)kCTUnderlineStyleAttributeName value:@(kCTUnderlineStyleThick) range:underlineRange];
    CFRelease(font);
  }

  return mutableAttributedString;
}];
```

do this:

```objective-c
label.attributedText = [[[[NSAttributedString alloc] initWithString:@"Lorem ipsum dolar sit amet"]
                        addFont:[UIFont boldSystemFontOfSize:14] string:@"ipsum dolar"]
                       addUnderline:@(kCTUnderlineStyleThick) string:@"sit amet"];
```

For the UILabel/iOS6+ version, check out the iOS6 branch.
