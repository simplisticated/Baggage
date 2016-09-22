//
//  MainViewController.swift
//  BaggageDemo
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet private weak var sourceTextField: UITextField!
    
    @IBOutlet private weak var resultTextField: UITextField!
    
    @IBOutlet private weak var copyAndPasteButton: UIButton!
    
    
    // MARK: Variables & properties
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize source text field
        
        sourceTextField.delegate = self
        
        
        // Initialize copy and paste button
        
        copyAndPasteButton.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    @IBAction func copyAndPasteButtonTapped(sender: AnyObject) {
        // Copy source text to clipboard
        
        sourceTextField.bg_copyTextToClipboard()
        
        
        // Paste source text to result text field
        
        resultTextField.bg_pasteTextFromClipboard()
    }
    
    
    // MARK: Protocol methods
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == sourceTextField {
            let currentText = textField.text ?? ""
            let textAfterReplacement = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            let textAfterReplacementIsEmpty = textAfterReplacement.isEmpty
            
            let shouldEnableCopyAndPasteButton = !textAfterReplacementIsEmpty
            copyAndPasteButton.isEnabled = shouldEnableCopyAndPasteButton
            
            return true
        } else {
            return true
        }
    }
    
}
