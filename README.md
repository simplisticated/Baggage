<p align="center" >
<img src="https://github.com/igormatyushkin014/Baggage/blob/master/Logo/logo-1024-300.png" alt="Baggage" title="Baggage">
</p>

# Baggage

`Baggage` is a set of extensions for iOS SDK that simplify work with clipboard. Absolutely compatible with standard `UIPasteboard` class.

##How To Get Started

- Copy content of `Baggage` folder to your project.

or

- Use `Baggage` cocoapod

**Note**:

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
