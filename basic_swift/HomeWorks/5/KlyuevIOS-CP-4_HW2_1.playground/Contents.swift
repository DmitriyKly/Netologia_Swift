import UIKit

//Task 1

let boys = ["Dmitriy","Evgeniy"]
let girls = ["Ksenia", "Yulia", "Mariya"]
var students = girls
for name in boys {
    students.insert(name, at:0)
}
print(students)

//Task 2

students.sort()
print(students)


//Task 3

var score = [-10, 10, -20, 20, -30, 30]
score.sort()
var moreNull = score.filter({$0 > 0})
moreNull

