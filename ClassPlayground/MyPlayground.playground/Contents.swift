//: Playground - noun: a place where people can play

import UIKit

let anotherHaiku = ["Even", "with", "insects", "some", "can",
                    
                    "sing", "some",  "cannot"]

var anotherCopy = anotherHaiku

var storeHaiku = ""



anotherCopy.remove(at: 6)

anotherCopy.remove(at: 6)



for iterator in anotherCopy {
    
    if iterator.count >= 4{
        
        storeHaiku.append(iterator + " ")
        
        
        
    }
    
    
    
}



var new = storeHaiku.replacingOccurrences(of: "sing", with: "SING")

new = (new.replacingOccurrences(of: "some", with: "SOME"))





print(new)
