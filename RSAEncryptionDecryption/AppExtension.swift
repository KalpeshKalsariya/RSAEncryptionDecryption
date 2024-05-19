//
//  AppExtension.swift
//  RSAEncryptionDecryption
//
//  Created by  Kalpesh on 19/05/24.
//

import Foundation

import UIKit

@IBDesignable
class DesignableView: UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
}

extension UITextField {
    func removeWhiteSpace() {
        self.delegate = self
    }
}


extension UITextField: UITextFieldDelegate {
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Remove any white space characters from the replacement string
        let newString = string.replacingOccurrences(of: " ", with: "")
        
        // Get the current text, modify it with the new string, and update the text field
        if let currentText = textField.text as NSString? {
            let updatedText = currentText.replacingCharacters(in: range, with: newString)
            textField.text = updatedText
        }
        
        // Return false since we've manually updated the text field
        return false
    }
}
