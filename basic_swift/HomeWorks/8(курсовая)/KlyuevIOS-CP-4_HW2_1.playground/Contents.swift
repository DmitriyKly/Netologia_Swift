import UIKit

/*struct ost {
    let name:String
    let time: Int
}

let ostNum = [
    ost(name: "ost1", time: 0),
    ost(name: "ost2", time: 6),
    ost(name: "ost3", time: 11),
    ost(name: "ost4", time: 18),
    ost(name: "ost5", time: 30),
    ost(name: "ost6", time: 50),
    ost(name: "ost7", time: 60),
    ]
var group01 = Dictionary(grouping: ostNum, by: { $0.time}) // вывод по 1 ключу
group01

// ------------------------
*/

var ostNum: [String: Int]? = ["ost1": 0, "ost2": 6, "ost3": 11, "ost4": 18, "ost5": 30, "ost6": 50, "ost7": 60]
ostNum
print(ostNum!)

var ostNum01: [String: Int] = ["ost1": 0, "ost2": 6, "ost3": 11, "ost4": 18, "ost5": 30, "ost6": 50, "ost7": 60]
ostNum01
print(ostNum01)


ostNum01.startIndex

/*

let dnevnik = [
    "Dmitriy" : [
        "Philophiya": 5,
        "Music" : 4,
        "History": 3
    ]
]
dnevnik["Dmitriy"]

for (_, value) in ostNum01 {
    print(value)
   
}


*/
/*
let ost = ["ost1","ost2","ost3","ost4","ost5","ost6","ost7"]
let time = [0,6,11,18,30,50,60]

let zip01 = zip(ost, time)
let ostNum01 = Dictionary(zip01, uniquingKeysWith: {$1} )
ostNum01
*/
func resultTime(Begin first: String, last: String) -> Int {
    return [ostNum01[first], ostNum01[last]].compactMap{$0}.sorted().reduce(0, {$1 - $0})
}
resultTime(Begin: "ost3", last: "ost1")

/*

func calculateOst(beginOst ostNum01:[String: Int], endOst ostNum:[String: Int] ) -> Int {
    
    for (_, value) in ostNum01 {
        print(value)
    }
    }

//let fuel = calculateRefuelFlight(distance: 30, weight: 120)


*/
