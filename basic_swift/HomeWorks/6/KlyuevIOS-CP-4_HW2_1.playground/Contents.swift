import UIKit

//task 1

var infoMe = (film: "Click", number: 7, meal: "Pizza")
let (film, number, meal) = infoMe
var infoFriend = (film: "Forrest Gump", number: 14, meal: "Sushi")
var change = infoMe
infoMe = infoFriend
infoFriend = change
infoMe
infoFriend
var final = (infoFriend.number, infoMe.number, infoMe.number-infoFriend.number)

//task 2

let dnevnik = [
    "Dmitriy" : [
        "Philophiya": 5,
        "Music" : 4,
        "History": 3
    ]
]
dnevnik["Dmitriy"]

//task 3

typealias Chessman = [String: (Character, Int)?]
var Chessmans: Chessman = [
    "Черная ладья": ("A",0),
    "Черный конь": ("B",2),
    "Белый король": nil
]
if var info = Chessmans["Черный конь"] {
    print(info ?? "Kill or unknown")
}
