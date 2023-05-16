import UIKit

// task 1

//1.1

var aVar1: String? = "Hello"
var aVar2: String? = "My"
var aVar3: String? = nil

var bVar1: String = aVar1 ?? "Error"
print("\(bVar1)")

var bVar2: String = aVar2 ?? "Error"
print("\(bVar2)")

var bVar3: String = aVar3 ?? "Friend"
print("\(bVar3)")

// Есть ли разница между выводами в случае, когда переменная не имела значения и после присвоения.

var bVar4: String = aVar3 ?? String("Friend")
print("\(bVar4)")

print(type(of: bVar3))
print(type(of: bVar4))

//В моем случае нету разницы - они оба String

//1.2

// optional binding
let aVar01: String = "10"
let aVar02: String = "20aq"
let aVar03: String = "30"
let aVar04: String = "40qw"
let aVar05: String = "50"

var aVarSum: Int = 0
if let bVar01 = Int(aVar01)
{
    aVarSum += bVar01
}
if let bVar02 = Int(aVar02)
{
    aVarSum += bVar02
}

if let bVar03 = Int(aVar03)
{
    aVarSum += bVar03
}

if let bVar04 = Int(aVar04)
{
    aVarSum += bVar04
}

if let bVar05 = Int(aVar05)
{
    aVarSum += bVar05
}

print("\(aVarSum)")

// forced unwrapping

var bVarSum: Int = 0

if Int(aVar01) != nil
{
    var bVar01 = aVar01
bVarSum += Int(bVar01)!
}

if Int(aVar02) != nil
{
    var bVar02 = aVar02
bVarSum += Int(bVar02)!
}

if Int(aVar03) != nil
{
    var bVar03 = aVar03
bVarSum += Int(bVar03)!
}

if Int(aVar04) != nil
{
    var bVar04 = aVar04
bVarSum += Int(bVar04)!
}

if Int(aVar05) != nil
{
    var bVar05 = aVar05
bVarSum += Int(bVar05)!
}

print ("\(bVarSum)")


//Task2

let Temperature: Optional<Int> = Int("25")
if Temperature != nil
{
 if Temperature! > 0
    {
     print("Температура больше 0")
 }
    if Temperature! < 0
       {
        print("Температура меньше 0")
    }
    if Temperature! < -10
       {
        print("Одень шапку")
    }
    if Temperature! > 10
       {
        print("Можешь снять шапку")
    }
}
else {
    print("Вы указали не числовое значение")
}
