//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}




protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
    
}



extension BankVault {
    
    
     func allowEntryWithPassword(password: [Int]) -> Bool {
        var correctDigits = true
        if password.count == 0 || password.count > 10 {
            correctDigits = false
        } else {
            
            for (index, number) in password.enumerated() {
             
                let indexIsEven = (index + 1) % 2 == 0
                
                if !indexIsEven {
                    
                    let numberIsEven = number % 2 == 0
                    
                    if !numberIsEven {
                        
                        correctDigits = false
                    }
                    
                }
                

            }
            
            
                }
        return correctDigits
            }
            
        }
        


//Experiment:
//extension BankVault {
//    
//    
//    func allowEntryWithPassword(password: [Int]) -> Bool {
//        var correctDigits = true
//        if password.count == 0 || password.count > 10 {
//            correctDigits = false
//        } else {
//
//
//            for (index, _) in password.enumerated() {
//
//                let item = password[0]
//                print(item)
//
//                let isEven = item % 2 == 0
//                print(isEven)
//
//                let indexAheadByTwo = index.advanced(by: 2)
//                print(indexAheadByTwo)
//
//
//
//                if item == item && indexAheadByTwo == indexAheadByTwo {
//                    correctDigits = true
//
//
//
//                }
//
//
//            }
//
//
//                }
//        return correctDigits
//            }
//
//        }
//



//Tam
//extension BankVault {
//    
//    
//    internal func allowEntryWithPassword(password: [Int]) -> Bool {
//        var correctDigits = false
//        if password.count == 0 || password.count > 10 {
//            return correctDigits
//        } else {
//            for (index, num) in password.enumerated() {
//                if (password[0] % 2 == 0) && index.advanced(by: 2) % 2 == 0 {
//                    correctDigits = true
//                }
//            }
//            
//        }
//        
//        return correctDigits
//    }
//}
//











