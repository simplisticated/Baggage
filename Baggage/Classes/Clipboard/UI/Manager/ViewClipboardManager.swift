//
//  ViewClipboardManager.swift
//  BaggageDemo
//
//  Created by Igor Matyushkin on 29.10.2017.
//  Copyright © 2017 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ViewClipboardManager {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(view: View) {
        // Initialize view
        
        self.view = view
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var view: View
    
    // MARK: Public object methods
    
    @discardableResult
    public func copy() -> Bool {
        switch self.view {
        case let .textField(view):
            let currentText = view.text ?? ""
            let copiedToClipboard = currentText.bg.copy()
            return copiedToClipboard
        case let .textView(view):
            let currentText = view.text ?? ""
            let copiedToClipboard = currentText.bg.copy()
            return copiedToClipboard
        }
    }
    
    @discardableResult
    public func paste() -> Bool {
        switch self.view {
        case let .textField(view):
            guard let textFromClipboard = String.bg.fromClipboard else {
                return false
            }
            
            view.text = textFromClipboard
            return true
        case let .textView(view):
            guard let textFromClipboard = String.bg.fromClipboard else {
                return false
            }
            
            view.text = textFromClipboard
            return true
        }
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
    // MARK: Types
    
    public enum View {
        case textField(view: UITextField)
        case textView(view: UITextView)
    }
    
}
