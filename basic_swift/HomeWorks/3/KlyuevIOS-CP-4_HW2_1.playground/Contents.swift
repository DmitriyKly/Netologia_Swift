import UIKit

//Task 1

let january = "January"
let february = "February"
let march = "March"
let april = "April"
let may = "May"
let june = "June"
let july = "July"
let august = "August"
let september = "September"
let october = "October"
let november = "November"
let december = "December"

var selectedMounth: String = april

if selectedMounth == january {
    print("\(selectedMounth) has 15 working days")
}
else if selectedMounth == february {
    print("\(selectedMounth) has 19 working days")
}
else if selectedMounth == march {
    print("\(selectedMounth) has 22 working days")
}
else if selectedMounth == april {
    print("\(selectedMounth) has 22 working days")
}
else if selectedMounth == may {
    print("\(selectedMounth) has 22 working days")
}
else if selectedMounth == june {
    print("\(selectedMounth) has 21 working days")
}
else if selectedMounth == july {
    print("\(selectedMounth) has 22 working days")
}
else if selectedMounth == august {
    print("\(selectedMounth) has 23 working days")
}
else if selectedMounth == september {
    print("\(selectedMounth) has 22 working days")
}
else if selectedMounth == october {
    print("\(selectedMounth) has 23 working days")
}
else if selectedMounth == november {
    print("\(selectedMounth) has 21 working days")
}
else if selectedMounth == december {
    print("\(selectedMounth) has 23 working days")
}

//Task 2

switch selectedMounth {
case january:
    print("\(selectedMounth) has 15 working days")
case february:
    print("\(selectedMounth) has 19 working days")
case march:
    print("\(selectedMounth) has 22 working days")
    
case april:
    print("\(selectedMounth) has 22 working days")
    
case may:
    print("\(selectedMounth) has 22 working days")
case june:
        print("\(selectedMounth) has 21 working days")
    
case july:
        print("\(selectedMounth) has 22 working days")
    
case august:
        print("\(selectedMounth) has 23 working days")

case september:
        print("\(selectedMounth) has 22 working days")
    
case october:
        print("\(selectedMounth) has 23 working days")
    
case november:
        print("\(selectedMounth) has 21 working days")
    
case december:
        print("\(selectedMounth) has 23 working days")
default:
    break
}

//Task 3

var isHoliday: Bool = false
print(isHoliday ? "Holiday day" : "Working day" )
