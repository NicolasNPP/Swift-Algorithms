import UIKit

var mySentence = "Hola soy Nicolás Pepe"

func reverseWords(sentence: String) -> String{
    let words = mySentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...words.count - 1 {
        let word = words[index]
        
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 1 {
            let reverseWord = String(word.reversed())
            newSentence += reverseWord
        } else {
            newSentence += word.reversed()
        }
    }
    return newSentence
}

print(reverseWords(sentence: mySentence))
