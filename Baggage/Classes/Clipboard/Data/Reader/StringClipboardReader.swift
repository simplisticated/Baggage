//
//  StringClipboardReader.swift
//  BaggageDemo
//
//  Created by Igor Matyushkin on 29.10.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class StringClipboardReader {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public var fromClipboard: String? {
        get {
            let pasteboard = UIPasteboard.general
            let resultString = pasteboard.string
            return resultString
        }
    }
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
