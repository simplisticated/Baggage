<p align="center" >
<img src="https://github.com/igormatyushkin014/Baggage/blob/master/Logo/logo-1024-300.png" alt="Baggage" title="Baggage">
</p>

<p align="center">
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/v/Baggage.svg?maxAge=2592000"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/dt/Baggage.svg?maxAge=2592000"></a>
<a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat"></a>
</p>

# Baggage

The main purpose of `Baggage` is to simplify work with clipboard. The library is absolutely compatible with standard `UIPasteboard` class.

## How To Get Started

- Copy content of `Baggage` folder to your project.

or

- Use `Baggage` cocoapod

## Requirements

* iOS 9.0 and later
* Xcode 8 and later

## Usage

### String

Copy string to clipboard:

```swift
let str = "Some text"
str.bg_copyToClipboard()
```

Get string from clipboard:

```swift
let str = String.bg_stringFromClipboard()
NSLog(str) // Some text
```

### UITextField

Copy text to clipboard:

```swift
let textField = UITextField()
textField.text = "Some text"
textField.bg_copyTextToClipboard()
```

Paste text from clipboard:

```swift
textField.bg_pasteTextFromClipboard()
NSLog(textField.text!) // Some text
```

### UITextView

Copy text to clipboard:

```swift
let textView = UITextView()
textView.text = "Some text"
textView.bg_copyTextToClipboard()
```

Paste text from clipboard:

```swift
textView.bg_pasteTextFromClipboard()
NSLog(textView.text) // Some text
```

## License

`Baggage` is available under the MIT license. See the `LICENSE` file for more info.
