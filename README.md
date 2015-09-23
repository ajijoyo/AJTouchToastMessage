# AJTouchToastMessage
Toast Message IOS Objective-C


#import
```objc
#import "AJTouchToastMessage.h"
```

#usage
AJTouchToastMessage is extension of uiview

```objc
-(IBAction)buttonDidtap:(id)sender{
    [sender AJTsetMessage:@"WOW" withDuration:5];
}
```
or

```objc
-(IBAction)buttonDidtap:(id)sender{
    [sender AJTsetMessage:@"WOW"];
}
```

#license
MIT
