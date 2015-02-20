// Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"



var pwCharacters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","@","#","$","%","^","&","*"]



func randomPassword(passwordLength: Int) -> String {
    
    var password = ""
    var unsignedArrayCount = UInt32(pwCharacters.count)
    
    for var i = 0; i < passwordLength; i++ {
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        password += pwCharacters[randomNumber]
    }
    
    return password
}


randomPassword(200)

var myPassword = randomPassword(20)

if myPassword == "\(myPassword)" {
    
    println("Welcome")
} else {
    println("wrong password")
}




