# RSA Encryption and Decryption in Swift

This project demonstrates how to perform RSA encryption and decryption using Swift and the Security framework. The app includes a simple user interface where users can enter a message, which is then encrypted and decrypted using RSA keys.

To understand more about RSA encryption and decryption, you can also visit online tool(https://www.devglan.com/online-tools/rsa-encryption-decryption) for experimentation and further learning.

# Features
- Generate RSA key pairs (private and public keys)
- Encrypt data using RSA/ECB/PKCS1Padding
- Decrypt data using RSA/ECB/PKCS1Padding

# Getting Started

# Prerequisites

- Xcode 12.0 or later
- iOS 13.0 or later

# Installation

1. Clone the repository:

git clone https://github.com/your-username/RSAEncryptionDecryption.git

2. Open the project in Xcode:

cd RSAEncryptionDecryption

open RSAEncryptionDecryption.xcodeproj

# Code Explanation
# RSAKeyGenerator.swift
This class is responsible for generating RSA key pairs and performing encryption and decryption.

- **generateRSAKeyPair():** Generates an RSA key pair.
- **rsaEncrypt(data:publicKey:):** Encrypts data using the provided public key.
- **rsaDecrypt(data:privateKey:):** Decrypts data using the provided private key.

# ViewController.swift
This class handles the user interface and interactions.

- **generateKeyPair(strText:):** Generates an RSA key pair, encrypts the given text, and then decrypts the encrypted data.
- **btnTapEncriptDescrypt_Action(_:):** Action method connected to the button. It triggers the key generation, encryption, and decryption process.


