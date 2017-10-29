//
//  UITextViewExtensionClipboard.swift
//  Baggage
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation

import UIKit

public extension UITextView {
    
    // MARK: Public static methods
    
    // MARK: Private static methods
    
    // MARK: Public object methods
    
    public func bg_copyTextToClipboard() -> Bool {
        let currentText = text ?? ""
        let copiedToClipboard = currentText.bg.copy()
        return copiedToClipboard
    }
    
    public func bg_pasteTextFromClipboard() -> Bool {
        let textFromClipboard = String.bg.fromClipboard
        
        guard textFromClipboard != nil else {
            return false
        }
        
        text = textFromClipboard
        
        return true
    }
    
    // MARK: Private object methods
    
}
