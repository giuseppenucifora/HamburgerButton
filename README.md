# HamburgerButton

[![CI Status](http://img.shields.io/travis/Giuseppe Nucifora/HamburgerButton.svg?style=flat)](https://travis-ci.org/Giuseppe Nucifora/HamburgerButton)
[![Version](https://img.shields.io/cocoapods/v/HamburgerButton.svg?style=flat)](http://cocoapods.org/pods/HamburgerButton)
[![License](https://img.shields.io/cocoapods/l/HamburgerButton.svg?style=flat)](http://cocoapods.org/pods/HamburgerButton)
[![Platform](https://img.shields.io/cocoapods/p/HamburgerButton.svg?style=flat)](http://cocoapods.org/pods/HamburgerButton)

## Overview ##

LBHamburgerButton is an iOS control that displays 3 lines (hamburger) and other icon (back, close...) without using image. It has a beautiful, clean and smooth transition between 2 state like Google Material Design or "close button" of Paper app.

## Requirement ##

LBHamburgerButton use QuartzCore framework, so dont forget to add this framework. ARC (iOS 5+) is also required.

## How to use ##

First, you need to copy 2 files LBHamburgerButton.h/.m to your project. Then, import them to your class

```objc
#import "LBHamburgerButton.h"
```

This is a sub-class of UIButton. So you can init a simple button and call set-up method:

```objc
buttonHamburger = [[LBHamburgerButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
[buttonHamburger setUpHamburgerWithType:LBHamburgerButtonTypeCloseButton
lineWidth:50
lineHeight:50/6
lineSpacing:5
lineCenter:CGPointMake(50, 50)
color:[UIColor whiteColor]];


or use full contructor like this:


```objc
buttonHamburger = [[LBHamburgerButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)
withHamburgerType:LBHamburgerButtonTypeCloseButton
lineWidth:50
lineHeight:50/6
lineSpacing:5
lineCenter:CGPointMake(50, 50)
color:[UIColor whiteColor]];
```

Set other propertises, add target add it to view like UIButton.

```objc
[buttonHamburger setCenter:CGPointMake(120, 120)];
[buttonHamburger setBackgroundColor:[UIColor blackColor]];
[buttonHamburger addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];

[self.view addSubview:buttonHamburger];
```

When you want to switch state, just call `switchState`.

```objc
- (void)buttonPressed:(id)sender {
LBHamburgerButton* btn = (LBHamburgerButton*)sender;
[btn switchState];
}
```

## MIT License
Copyright (c) 2014 Bang Nguyen

## Installation

HamburgerButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "HamburgerButton"
```

## Author

Giuseppe Nucifora, me@giuseppenucifora.com



## License

HamburgerButton is available under the MIT license. See the LICENSE file for more info.
