//
//  ViewController.swift
//  RSAEncryptionDecryption
//
//  Created by  Kalpesh on 19/05/24.
//

import UIKit
import Security

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply the white space removal functionality to the text field
//        txtMessage.removeWhiteSpace()
        
        // Do any additional setup after loading the view.
    }

    private func generateKeyPair(strText: String) {
        do {
            // Generate RSA key pair
            let (privateKey, publicKey) = try RSAKeyGenerator.shared.generateRSAKeyPair()
            
            // Encrypt data
            let dataToEncrypt = strText.data(using: .utf8)!
            let encryptedData = try RSAKeyGenerator.shared.rsaEncrypt(data: dataToEncrypt, publicKey: publicKey)
            
            // Decrypt data
            let decryptedData = try RSAKeyGenerator.shared.rsaDecrypt(data: encryptedData, privateKey: privateKey)
            let decryptedString = String(data: decryptedData, encoding: .utf8)
            
            print("Decrypted String: \(decryptedString ?? "Decryption failed")")
        } catch {
            print("An error occurred: \(error)")
        }
        
    }
    
}

extension ViewController {
    @IBAction func btnTapEncriptDescrypt_Action(_ sender: UIButton) {
        if let strText = txtMessage.text {
            txtMessage.text = ""
            self.generateKeyPair(strText: strText)
        }
    }
}


