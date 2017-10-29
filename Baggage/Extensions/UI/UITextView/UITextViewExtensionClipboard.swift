//
//  UITextViewExtensionClipboard.swift
//  Baggage
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public extension UITextView {
    
    // MARK: Public class variables
    
    // MARK: Public static methods
    
    // MARK: Private static methods
    
    // MARK: Public object variables
    
    public var bg: ViewClipboardManager {
        get {
            return ViewClipboardManager(view: .textView(view: self))
        }
    }
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}
