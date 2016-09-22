//
//  UITextFieldExtensionClipboard.swift
//  Baggage
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UITextField {
    
    // MARK: Public static methods
    
    
    // MARK: Private static methods
    
    
    // MARK: Public object methods
    
    @discardableResult
    public func bg_copyTextToClipboard() -> Bool {
        let currentText = text ?? ""
        let copiedToClipboard = currentText.bg_copyToClipboard()
        return copiedToClipboard
    }
    
    @discardableResult
    public func bg_pasteTextFromClipboard() -> Bool {
        let textFromClipboard = String.bg_stringFromClipboard()
        
        guard textFromClipboard != nil else {
            return false
        }
        
        text = textFromClipboard
        
        return true
    }
    
    
    // MARK: Private object methods
    
}

