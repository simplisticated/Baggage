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
    
    // MARK: Public static variables
    
    public static var bg: StringClipboardReader {
        get {
            return StringClipboardReader()
        }
    }
    
    // MARK: Public static methods
    
    // MARK: Private static methods
    
    // MARK: Public object variables
    
    public var bg: ClipboardWriter {
        get {
            return ClipboardWriter(resource: .string(value: self))
        }
    }
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}
