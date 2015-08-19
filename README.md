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

or go nuts:

```objective-c

label.attributedText = [[[[[[[[[[NSAttributedString alloc] initWithString:@"Lorem ipsum dolar sit amet"]
                              addFont:[UIFont systemFontOfSize:14] string:@"Lorem ipsum dolar sit amet"]
                             addTextColor:[UIColor blackColor] string:@"Lorem ipsum dolar sit amet"]
                            addFont:[UIFont systemFontOfSize:20] string:@"Lorem"]
                           addStrokeColor:[UIColor greenColor] string:@"ipsum"]
                          addStrokeWidth:@(-3) string:@"ipsum"]
                         addUnderline:@(kCTUnderlineStyleThick) string:@"dolar"]
                        addKerning:@5 string:@"sit"]
                       addLigature:@2 string:@"amet"];
```

For the UILabel/iOS6+ version, check out the [iOS6 branch](https://github.com/marksands/NSAttributedString-Builder/tree/iOS6).
