//
//  ViewController.swift
//  SuperSenha
//
//  Created by Gilmar on 18/03/2019.
//  Copyright © 2019 Gilmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tftotalPassword: UITextField!
    @IBOutlet weak var tfNunberOfCharacters: UITextField!
    @IBOutlet weak var seNumber: UISwitch!
    @IBOutlet weak var swLetters: UISwitch! 
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialcharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsVireController = segue.destination as! PasswordsViewController
        if let numberOfPassword = Int(tftotalPassword.text!){
            passwordsVireController.numberOfPasswords = numberOfPassword
        }
        if let numberOfCharacters = Int(tfNunberOfCharacters.text!){
            passwordsVireController.numberOfCharacters = numberOfCharacters
        }
        passwordsVireController.useLetter = swLetters.isOn
        passwordsVireController.userNumber = seNumber.isOn
        passwordsVireController.useCapitalLetters = swCapitalLetters.isOn
        passwordsVireController.useSpecielCharacters = swSpecialcharacters.isOn
        
        view.endEditing(true)
        

    }
}

