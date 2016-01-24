//
//  MainViewController.swift
//  BaggageDemo
//
//  Created by Igor Matyushkin on 25.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet private weak var sourceTextField: UITextField!
    
    @IBOutlet private weak var resultTextField: UITextField!
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    @IBAction func copyAndPasteButtonTapped(sender: AnyObject) {
        // Copy source text to clipboard
        
        let sourceText = sourceTextField.text ?? ""
        
        guard !sourceText.isEmpty else {
            resultTextField.text = ""
            return
        }
        
        sourceText.bg_copyToClipboard()
        
        
        // Paste source text to result text field
        
        resultTextField.text = String.bg_stringFromClipboard()
    }
    
    
    // MARK: Protocol methods
    
}
