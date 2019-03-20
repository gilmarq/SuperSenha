//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Gilmar on 19/03/2019.
//  Copyright © 2019 Gilmar. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetter: Bool!
    var userNumber: Bool!
    var useCapitalLetters: Bool!
    var useSpecielCharacters: Bool!
    
    var passwordGenerato: PasswordsGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas \(numberOfPasswords)"
        
        passwordGenerato = PasswordsGenerator(
            
            numberOfCharacters:numberOfCharacters,
            useLetter: useLetter!,
            userNumber: userNumber!,
            useCapitalLetters: useCapitalLetters!,
            useSpecielCharacters:useSpecielCharacters!)
        
          generatePassword()
        
    }
    func generatePassword(){
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerato.generate(total: numberOfPasswords)
        for password in passwords{
            tvPasswords.text.append(password + "\n\n")

        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePassword()
    }
    
}
