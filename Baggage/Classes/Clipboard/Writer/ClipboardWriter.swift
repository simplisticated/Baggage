//
//  ClipboardWriter.swift
//  BaggageDemo
//
//  Created by Igor Matyushkin on 29.10.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ClipboardWriter {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(resource: Resource) {
        // Initialize resource
        
        self.resource = resource
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var resource: Resource
    
    // MARK: Public object methods
    
    @discardableResult
    public func copy() -> Bool {
        switch self.resource {
        case let .string(value):
            guard !value.isEmpty else {
                return false
            }
            
            let pasteboard = UIPasteboard.general
            pasteboard.string = value
            return true
        }
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
    // MARK: Types
    
    public enum Resource {
        case string(value: String)
    }
    
}
