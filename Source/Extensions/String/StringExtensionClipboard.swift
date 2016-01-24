//
//  StringExtensionClipboard.swift
//  Baggage
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension String {
    
    // MARK: Public static methods
    
    public static func bg_stringFromClipboard() -> String? {
        let pasteboard = UIPasteboard.generalPasteboard()
        let resultString = pasteboard.string
        return resultString
    }
    
    
    // MARK: Private static methods
    
    
    // MARK: Public object methods
    
    public func bg_copyToClipboard() {
        let pasteboard = UIPasteboard.generalPasteboard()
        pasteboard.string = self
    }
    
    
    // MARK: Private object methods
    
}

