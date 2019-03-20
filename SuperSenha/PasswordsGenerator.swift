//
//  PasswordsGenerator.swift
//  SuperSenha
//
//  Created by Gilmar on 19/03/2019.
//  Copyright © 2019 Gilmar. All rights reserved.
//

import Foundation

class PasswordsGenerator {
    
    
  
    //  var numberOfPasswords: Int
    var numberOfCharacters: Int
  
    var useLetter: Bool!
    var userNumber: Bool!
    var useCapitalLetters: Bool!
    var useSpecielCharacters: Bool!
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialLetters = "!@#$%^&*()_-+=~'[]|{}'?/><.,"
    private let numbers = "0123456789"
    
    
    init(numberOfCharacters: Int,useLetter: Bool, userNumber: Bool, useCapitalLetters: Bool,useSpecielCharacters: Bool) {
        
         var numchars = min(numberOfCharacters, 16)
          numchars = max(numchars, 1)
        
         self.useSpecielCharacters = useSpecielCharacters
         self.useLetter = useLetter
         self.userNumber = userNumber
         self.useCapitalLetters = useCapitalLetters
         self.numberOfCharacters = numchars
        
    }
    
    func generate(total:Int) ->[String]{
       passwords.removeAll()
        var universe: String = ""
        
        if useLetter {
            universe += letters
        }
        if userNumber{
            universe += numbers
        }
        if useSpecielCharacters{
            universe += specialLetters
        }
        if useSpecielCharacters{
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        while passwords.count < total  {
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        
        
        return passwords
}

}
