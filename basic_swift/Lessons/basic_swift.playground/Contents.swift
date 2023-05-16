import UIKit

// This is my stringdadadsada
print("hello world")

/*
 
 dsadasnjfdk
 
 kfkgkdfjk
 */

struct Test {
    
    var variable3: Int = 4
    var vartiable4: Int
    
    init(variable4: Int)
    {
        self.vartiable4 = variable4
    }
    
}

var variable1: Int = 4
let constant1: Int = 3

var helloWorld: Int = 4

var variable2 = 2


var variableA: Int = 1
var variableB: Int = 2

let variableC: Int = variableA
variableA = variableB
variableB = variableC


// Числовые
var testInt: Int = 123
var testDouble: Double = 123.123447589348578934589374
var testFloat: Float = 123.13434234234

var testLongInt: Int = 2_000_000_000

//Строковые
var testString: String = "123"
var testChar: Character = "1"
var testStrings2 = String(testChar)
var testBool: Bool = true

//Возвращает первый эелемент из строки
let index =
testString.index(testString.startIndex,offsetBy: 1)
let testChar2 = testString[index]

// или

let testString04 = "This is Sparta"
let firstChar: Character = testString.first!
let index01 =
testString04.index(testString04.startIndex,offsetBy: 2)
print(testString04[index])

// ---------

var varA = 5
var varB = 8
var varC = varA + varB


var varA01 = "2"
var varB01 = "5"

var varA02: Double = 2
var varB02: Double = 5

var varC01 = varA01 + varB01

var varC02 = varA - varB

var varC03 = varA * varB

var varC04 = varB / varA

var varC06 = varB02 / varA02

//показывает остаток от деления

var varC05 = varB % varA

// Если остаток от деление равен 0 выведи мазафаку

if varA % 2 == 0 {
    print("helloMazafaka")
}

// Вывод " " в стринге
var testString01: String = "This is my test string \n Yoy \" \\ \" "
print(testString01)

// Вывод сразу с новой строки
var testString02: String = """
Hello
My
name
"""
print(testString02)

 
var varA03: Double = 10
var varB03: Double = 20

varB03 *= 1.2


//HomeWork

// Task1

var myBio: String = """
1.Dmitriy_Klyuev
2.System_Administator
3.Html/Css
4.Exchange,WinServ,VmWare,Hyper-V,SQL,Postgre,Veritas,Etc.
5.9_Years
6.Higher_education
"""
print(myBio)


//Task2

let name: String = "Dmitriy"
let lastName: String = "Klyuev"
var age: Int = 28
var relocation: String = "Munhen"
var expierenceMacOs: Bool = false
var desiresSalary: Int = 3500
var averageRelax: Int = 28
let favoriteColor: String = "Blue"

//Task3

//salary
var salaryMiddleIosDev: Double = 150000
var salaryJuniorIosDev: Int = 80000
var salaryMiddleAndroidDev: Int = 140000

//kpi

var kpiSalaryMiddleIosDev: Double = salaryMiddleIosDev * 1.2
var kpiSalaryJuniorIosDev: Int = salaryJuniorIosDev + 20000

print("Текущее значение friendlyWelcome равно \(kpiSalaryJuniorIosDev)")

// Lesson3
let name01 = "Dmitriy"
let surname = "Klyuev"
let total = "\(name)\n\(surname)"
print(total)

//-------------

var firstNumber01 = 2
var secondNumber01 = 3
var shouldCompare01: Bool = true

if shouldCompare01 {
    print("Should compare: \(shouldCompare01)")
    print("First number is less then second number: \(firstNumber01 < secondNumber01)")
}

//Функция tooggle() и random()
 //Функция toggle() позволяет получить противоположное значение:

var isEnabled: Bool = true
isEnabled = !isEnabled
isEnabled.toggle()


// Функция random() позволяет получить случайное значение типа Bool:

var random: Bool = Bool.random()


// Операции сравнения
/* Сравнивая значения, мы получим истину или ложь. Результат сравнения - это переменная типа Bool
 == Операция равенства
 Если левое и правое значение равны, вернет true, иначе false
 */

print(20 == 20) //true
print(20 == 8) //false

// != - Операция неравенства
// Если левое и правое значение не равны,вернет true, иначе false

print(20 != 20) //false
print(20 != 8) //true

// Если левое значение больше правогоб вернет true, иначе false

print(25 > 20) //true
print(20 > 25) //false

// < Если правое значение больше левого, вернет true, иначе false

print(25 < 20) //false
print(20 < 25) //true

// >= - Если левое значение больше либо равно правому, вернет true, иначе false:

print(25 >= 25) //true
print(8 >= 25) //false


// и наоборот

// ! Орицание (НЕ), Меняет значение bool переменной на обратное

let boolvar: Bool = true
let anothervar = !boolvar


// && Логическое умножение (И), Если оба значения будут равны true, тогда вернет true, иначе false
let vasyaHasMoney: Bool = true
let lenaHasMoney: Bool = true

print(vasyaHasMoney && lenaHasMoney)

// || Логическое сложение (ИЛИ), Если хотя бы одно значение равно true, вернет, иначе false

let dimaHasMoney: Bool = true
let KseniyaHasMoney: Bool = false

print(dimaHasMoney || KseniyaHasMoney)


// Также логические операции можно обьеденить с операторами сравнения:

let varA05 = 10
let varB05 = 12
print(varA05 > varB05) //false
print(varA05 > 8 && varB05 < 10) //false
print(varA05 > 8 || varB05 < 10) //true

//Оставновился на 36:40


let vasyaMoney: Double = 100
print(vasyaMoney > 99 && vasyaMoney < 101)

// Преобразование типов
let idObjectServer: String = "123456" // Данные от сервера
let idApp = Int(idObjectServer) //Преобразование для приложения

let three: Int = 3
let pointOneFourOneFiveNine: Double = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine // pi равно 3.14159 и для него выведен тип double
print(type(of: pi))

/*
 Здесь, для соответствия типам данных константу three преобразовали из типа int в Double, чтобы обе переменные имели одинаковый тип. Если не произвести преобразование, будет выведена ошибка о несоотвествии типов данных.

 */

let integerPi = Int(pi) // integerPi = 3 и для него выведен тип int
print(type(of: integerPi))

// свой пример

var testA06: Double = 3.1421
var testB06: Int = 3
var pi_new = Int(testA06) + testB06

// и наоборот

var testA07: Double = 4.1231
var testB07: Int = 4
var pi_new01 = Double(testB07) + (testA07)
/*orce unwrap
if Int(num5) != nil {
let x5: Int? = Int(num5)
sum += x5!
}
*/


/* if var num1 = Int(str1) {
num1 += a
print (num1) }
У вас есть переменная а, я так понимаю это переменная с суммой? Тогда и назвать надо соответствующе. То есть вы должны суммировать все значения с этой переменной, на наоборот. Вместо if var лучше в данном случае использовать if let

let str1: String = "100"
let a: Int = 10
if var num1 = Int(str1) {
num1 += a
print (num1) }
else {
print (a) }

Если подставляешь if let выдает ошибку “Left side of mutating operator isn’t mutable: ‘num1’ is a ‘let’ constant”


*/


// Остановился на 45:15

// Для округления есть комманды

let xxx: Double = 5.6
print(round(xxx))
print(floor(xxx))
print(ceil(xxx))



if type(of:   pi_new01) == Int.self
{
    print("hello")
}

else
{
    print("Good Bye")
}

//-----------------------------------------


// Условные конструкции

let number1 = 22
let number2 = 23
if number1 > number2 {
    print ("number1 больше number2")
}
else
{
    print ("number2 больше или = number1")
}
//
var number3 = 15

if number3 > 15 {
    print ("number3 > 15")
}
           else if number3 < 15
           {
        print("number3 < 15")
    }
           
           else
    {
        print("number3 = 15")
    }
           


// Тернарный оператор

// ? - если выражение истина
// : - если выражение false
// : - если выражение false


let num1 = 15
let num2 = 15
let num3 = (num2 >= num1) ? num2 : num1
print(num3)


let isMale = false
print(isMale ? "he is Man" : "She is Female")


//switch


var num: Int  = 20
switch num {
    
case 0:
    print("Переменная равна 0")
case 10:
        print("Переменная равна 10")
case 20:
    print("Переменная равна 20")
default: print("Не удалось распрознать число")
    break
    }


var num01: Int = 20
switch num01 {
case 0, 21:
    print("Число равно 0 или 21")
case 11 ..< 20:
    print("Число равно от 11 до 19 вкл")
    
case 11 ... 20:
    print("Число от 11 до 20 вкл")
default: print("Не удалось распознать число")
    break
}

var isbooltrue: Bool = false
switch isbooltrue {
case true:
    print("Bool is true")
case false:
    print("Bool is false")
}


// Связывание значений

var num02: Int = 10
switch num02
{
case 5:
    print("=5")
case 6:
    print("=6")
default:
    print("Number = \(num02)")
}

// ИЛИ
// Вместо Default мы сделали константу из числа и ее вывели
var num03: Int = 120
switch num03
{
case 130:
    print("=130")
case let n:
    print ("Number = \(n)")
}

// Оператор Where

var num04: Int = 0
switch num04 {
case let d where d < 0:
    print("num04 < 0")
case let d where d > 0:
    print("num04 > 0")
default:
    print("=0")
    break
}


// Разбор HM

// Task 1
let january = "Январь"
let febuary = "Январь"
let mart = "Январь"
//...

var selectedMounth = january
var days: Int = 0

if selectedMounth == january
{
    print("В Январе 28 Рабочих дней")
}
else if selectedMounth == febuary {
    print("В Феврале 28 Рабочих дней")
}

// Task 2
switch selectedMounth {
case january:
    print("В Январе 28 Рабочих дней")
case febuary:
    print("В Феврале 28 Рабочих дней")
default:
break
}


//Task 3

var isHoliday: Bool = false
print(isHoliday ? "Yes" : "No")

// END

// не смог решить

//Task 4

/* enum holiday {
case january
case february
case march
case april
case may
case june
case july
case august
case september
case october
case november
case december

    var description: String {
        switch self {
        case .january:
            return "Январь"
        default:
            break
            
        }
        return "\())"
    }
    
    }

*/


// Опциональные типы данных
/*
 Опциональные тип данных,опционал - это тип который представляет собой обернутое значение nil, по умолчанию опционал равен nil, по умолчанию опцинал равен nil, Опционал обозначается добавлением знака ? к типу данных, Пример

 */


let someString: String = "123"
let myNumber: Int? = Int(someString)

// В данном случае мы преобразуем строку someString в число, Строка имеет числовое значение ошибки не произойдет


// Принудительное зануление опционала:

var number: Int? = 12
number = nil


// Только опционалы могут иметь значение nil, Int? - Сокращенная запись от Optional<Int>
// Примеры обьявления опционалов

var optionalNumber1: Int? = 12
var optionalNumber2: Optional<Int> = 12
var optionalNumber3: Optional<Int> = Optional(12)
var optionalNumber4 = Optional(12)
var optionalNumber5 = Optional(false)

//var optionalNumber6: Int?
//print(optionalNumber6)

// Нельзя забывать что, Otional<Int>, optional<String> и optional<Double> это разные типы данных
// например
var optionalNumber = Optional (12)
var optionalstring = Optional (4.323132)
type (of: optionalNumber) != type(of: optionalstring)

// Как получить значение из опционала?
// Работать с двумя разными обьектами мы можем если они имеют только разные типы, например:

var aVar1: Int? = 12
var bVar1: Int = 14
 // var CVar1Wrong = aVar1 + bVar1 - Мы не может производить действия опционала с неопционалом

// Оператор ! - Оператор принудительного извелчения ( unwrap operator )

var cVar1Good = aVar1! + bVar1


// Другой пример

var aVar2: Int = 12
var bVar2: Int? = Int(32)
var cVar2 = aVar2 + bVar2!


// Неявное извлечение функционала

/*
Когда известно, что значение опционала существует сразу после первого обьявления, и точно будет сущетствовать после этого, можео использовать невявно извлеченный функционал
 */

var aVar3: Int? = Int ("213")
var bVar3: Int = 13
// Если значение не равно nil
if aVar3 != nil {
// То переменную aVar3 + bVar3 и полученное значение присваеиваем aVar3
    aVar3! += bVar3
    print(aVar3!)
}
else
{
    print(bVar3)
}


// Привязка опционала
/*
Одна из лучших возможностей получить значение опционала - это привязка  опционала, Идея в том, что мы присваиваем значение раскрытого опционала новой переменной и проверяем его наличие
 
Example
 if let( or var) константа = опционал {
 действие 1
}
 else { Действие 2
 }
 
 Логика работы
 1 в условии if мы присваевает значение переменной , константе
 2 Если значение есть, выполнится блок 1
 3 Если значения нет, выполнится блок 2
 */

var aVar4: Int? = Int("Hello")
if var helloaVar4 = aVar4
{
    helloaVar4 += 1
    print(helloaVar4)
}
else
{
 print ("There is no id")
}

var aVar5: Int? = Int("123")
var bVar5: Int? = Int("222")
if var aVar555 = aVar5, var bVar555 = bVar5 {
print(aVar555)
print(bVar555)
}
else
{
print("Error")
}

// Опционалы в switch.. case
/*
 В конструкции switch можно использовать обьект optional, в таком случае в блоках case нужно использовать ? для проверки значения, либо nil для проверки его отсутсвия:
 */


var aVar6: Int? = Int("qwert")
switch  aVar6 {
    
case 312:
        print("Number is \(312)")
    
case var value?:
        print("aVar6 is eq \(value)")
    
case nil:
        print("aVar is NULL")
    
}

// ИЛИ так:

// nil = .none

switch aVar6 {
case .some(var value):
    print("aVar6 is eq \(value)")
case .none:
    print("aVar is NULL")
}

// Оператор Nil - обьединения
/*
 Оператор ?? проверяет первый операнд на наличие значения, если Если этого значения нет, то выполняется операнд, следующий после знаков ??
 */


var aVar7: Int? = Int("212") ?? 10

// ИЛИ

var aVar8: Int? = Int("Hello")
print(aVar8 ?? 0 )

var aVar9: String? = "Hello"
var bVar9: String = aVar9 ?? "Default"
print("\(bVar9)")

// достать опционал

// К примеру
var aVar10: Int? = Int("32")
if var helloaVar10 = aVar10
{
    helloaVar10 += 1
    print(helloaVar10)
}
else
{
 print ("There is no id")
}

// Мне нужно обратится к aVar10

// Вариант 1

if var helloaVar11 = aVar10
{
    helloaVar11 += 1
}

// Сравнение обьектов Optional
// Если сравнить Optional с обьектом конкретного типа, например с числом, в данном случае обьект будет также преобразован к числу Optional

var aVar12: Int? = Int("11")
if aVar12 == 10 {
    print("aVar is eq 10")
    
}
else
{
    print("No eq")
}

// Также работают операции == !=, Но операции <,>,<=,>= все происходит по другому
// Необходимо число извлекать из опционала

var aVar13: Int? = 15
// if aVar13! > 10 - Если ты уверен что там тот тип ты можешь поставить ! после переменной
/* {
    print("aVar > 10")
}
*/
// либо через if else
if var aVar13 = aVar13 {
    
    if aVar13 > 10 {
        
        print("aVar13 > 10")
    }
}

// Можно добавить несколько условийб например


var aVar14: Int? = 17
if var aVar14 = aVar14, aVar14 > 10, aVar14 < 20 {
    print("aAvar14 > 10 and < 16")
}
else
{
    print ("Error")
    
}

// Как из предложения сделать число

let aVar15: String? = "19"
// var result: Int

if let aVar15, let result = Int(aVar15)
{
    print("\(result)")
}
else
{
    print("error")
}

// Или

if let NewaVar15 = aVar15 {
    let result = Int(NewaVar15)
    if let NewaVar001 = result
    {
        print("\(NewaVar001)")
    }
}
else
{
    print("error02")
}
// Разбор домашки 4

// Task 1

let Data01 = "132434"
let Data02 = "43231"
let Data03 = "65464"
let Data04 = "12358"
let Data05 = "87348573"
 
var sumData: Int = 0
// 1 способ Force Unwrap
sumData += Int(Data01)!
print(sumData)
// 2 способ optional binding
if let Data01Int = Int(Data01)
{
    sumData += Data01Int
}
// 3 способ Nil-coiasing

sumData += Int(Data01) ?? 0

// Task 2

let isConfirm = true
if let Data01Int = Int(Data01)
{
    if isConfirm {
        print("Ты подвердил оплату \(Data01Int)")
    }
}/*orce unwrap
  if Int(num5) != nil {
  let x5: Int? = Int(num5)
  sum += x5!
  }
  */


  /* if var num1 = Int(str1) {
  num1 += a
  print (num1) }
  У вас есть переменная а, я так понимаю это переменная с суммой? Тогда и назвать надо соответствующе. То есть вы должны суммировать все значения с этой переменной, на наоборот. Вместо if var лучше в данном случае использовать if let

  let str1: String = "100"
  let a: Int = 10
  if var num1 = Int(str1) {
  num1 += a
  print (num1) }
  else {
  print (a) }

  Если подставляешь if let выдает ошибку “Left side of mutating operator isn’t mutable: ‘num1’ is a ‘let’ constant”


  */
/*
var aVar3: Int? = Int ("213")
var bVar3: Int = 13
// Если значение не равно nil
if aVar3 != nil {
// То переменную aVar3 + bVar3 и полученное значение присваеиваем aVar3
    aVar3! += bVar3
    print(aVar3!)
}
else
{
    print(bVar3)
}

*/
/*
if <условие> {
    if <другое условие> {
        ...
    } else {
        ...
    }
} else {
    ...
}
*/

// Домашка 4

import UIKit

// task 1

//1.1
/*
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
if let bVar01 = Int(aVar01) {
    aVarSum += bVar01
}
if let bVar02 = Int(aVar02) {
    aVarSum += bVar02
    
}

if let bVar03 = Int(aVar03) {
    aVarSum += bVar03
}

if let bVar04 = Int(aVar04) {
    aVarSum += bVar04
}

if let bVar05 = Int(aVar05) {
    aVarSum += bVar05
}

print("\(aVarSum)")

// forced unwrapping

var bVarSum: Int = 0

if Int(aVar01) != nil {
bVarSum += Int(aVar01)!
}

if Int(aVar02) != nil {
bVarSum += Int(aVar02)!
}

if Int(aVar03) != nil {
bVarSum += Int(aVar03)!
}

if Int(aVar04) != nil {
bVarSum += Int(aVar04)!
}

if Int(aVar05) != nil {
bVarSum += Int(aVar05)!
}

print ("\(bVarSum)")


//Task2

let Temperature: Optional<Int> = Int("25")
if Temperature != nil
{
 if Temperature! > 0 {
     print("Температура больше 0")
 }
    else if Temperature! < 0 {
        print("Температура меньше 0")
    }
    else if  Temperature! < -10 {
        print("Одень шапку")
    }
    else if  Temperature! > 10 {
        print("Можешь снять шапку")
    }
}
else {
    print("Вы указали не числовое значение")
}

*/

// Масивы


/* Коллекции
Колллекция - тип данных которые могут содержать несколько значений 5 чисел 5 строк и тд
 существет 3 вида коллекция
 Array - Масив
 Dictionary - Словарь
 Set - Множество
В каждой коллеции есть свои особенности, и они используются в разных задачах
 Расмотрим эти коллекции по порядку
*/

/* Что такое массив ?
1.Когда нам нужно сохранить в одном месте всех пользователей, мы можем использовать массив
2.Массив это упорядоченный набор элементов одного типа данных
3.В случае,если мы попытаемся сохранить в массив данные разных типов, мы получим ошибку

*/

let users = ["Dmitriy Dmitrievich", "Sergei Sergeevich", "Nikolay Nikolaevich"]

let users01 = ["Dmitriy", "Ksenia", "Yulia"] // Здесь хранятся string обьекты
let number01 = [1, 2, 3, 4, 5, 6, 7, 8] // здесь логично числовые

// однако ты можешь использовать и строки и числа если скажешь массиву any

let users02: [Any]  = ["Dmitriy", "Ksenia", "Yulia"]


// Способы обьявления массива

// Обьявление пустого массива - когда обьявляем пустой массив обяз нужно указывать его тип
// примеры пустых массивов

let first = [Int]()
let second: [Int] = [] //Самый популярный
let third: Array<Int> = Array()
let fourth: Array<Int> = []
let fifth = Array<Int>.init()

// можно не обьялять комплилятору тип он итак понимает что это строки
let sixth: [String] = ["Eggs", "Milk"]
let seventh = ["Alex", "Sergei"]

// У каждого массива есть свой индекс к которому мы можем обратится
var number001 = [4, 8, 15, 16, 23, 42]

number001[5] // обращаемся к индексу 5 - где получаем значение массива

number001[3] = 21 // присваиваем 3 индексу значение массива 21
number001[3]
number001


number001.startIndex //выводит индекс 1 массива ( не наоборот)
number001.endIndex // выводит индекс за последним массивом, прежположим если индексов 6, он выведет 7
number001.firstIndex(of: 8) // получает индекс из значения массива
number001.indices // 1 и за последним индекс массива

// Размеры массива

number001.count // возвращается кол-во индексов
number001.isEmpty //Проверяет массив на пустоту и возвращает true если массив пуст

if number001.isEmpty {
    print("Number is empty")
}
else {
print("Number isn't empty")
}

// Массив можно перебрать по элементам циклом "For"
let foods = ["apple", "banana", "tomato", "milk", "egg" ]

for food01 in foods { // For мы перебираем массив
    print(food01)
}

// Также есть вариант перебора циклом for через индексы
for index in 0 ..< foods.count { // считаем от 0 до общего кол - ва переменных 0,1,2,3,4 ( 5 не входит)
    print(index)
}


// Обрати внимание на ..< - мы его вставляем мужду 2 числами или переменнымит там самым считаем сколько между ними индексов

for index in 0 ..< foods.count {
    print(foods[index]) // здесь мы вывовдит все массивы из диапозона индексов
}
// остановился на 32:52

// Цикл for используется в случаях, когда мы хотим совершить операции поочередно с каждым элементом

let friends = ["Mike", "Jane", "Karl"] // создаем константу из 3 массивов
var greetings: [String] = [] // создаем переменную с пустым массивом с типом строки

for friend01 in friends { // создаю новую переменную friends01 for в константе friends
    let greeting = "Dear \(friend01)" // создаю новую константу greeting которая равна строчке Dear + переменной friends01 в константе friend
     greetings.append(greeting) // связываю переменную greetings с константой greeting
}
print(greetings)


// Собственный пример

// Добавить слово кружка к цветам указанным в массиве


let colour = ["red", "blue", "white", "green"]
var colourCups: [String] = []

for colour01 in colour {
    let colourCup =  "\(colour01) Cup"
    colourCups.append(colourCup)
}
print(colourCups)


// также есть метод ForEach, с помощью которого можно перебрать элементы массива

colourCups.forEach({colourCup in
    print(colourCup)
})

// or

for colour02 in colourCups
{
    print(colour02)
}

 // Метод enumerated - получает не только элемент массива, но и его индекс

for (index, cup) in colour.enumerated() {
    print("-Cup №\(index) - \(cup)")
}

// пример с enumerated

let numbers01 = [-1,-2,-3,4]
var neagativeNumber: [Int] = []
for (index, number) in numbers01.enumerated() {
    if number < 0 {
        neagativeNumber.append(index)
    }
}

print("Negative indicies:", neagativeNumber)
// создание массива из последовательностей

let posl01 = Array(1...9) // отрезок от 1 до 9 включая
let posl02 = [Int](3..<7) // отрезок от 3 до 7 не считая 7
let posl03 = [Int](repeating: 5, count: 3) // повторяем 5 3 раза
let posl04 = Array(repeating: 5, count: 3)

// остановился на 54:50

class Person { // Задаем ссылочный тип на обьект Person
    var name: String // создаем переменную name
    init(name: String) {
        self.name = name // тупо инициализую новую переменную name.. , говорю что она называется Person / без инициалиции class не работает
    }
}

let tom = Person(name: "Tom") // создаю константу Tom и присваю ссылку Person на переменную name и говорю что переменная name = "Tom"
let mike = tom
mike.name // узнаю свойство name у константы mike
tom.name

var people = Array(repeating: tom, count: 3) // Создаю переменную people присваюваю массив из константы tom и повторяю 3 раза
people[0].name = "Bob" // Индекс 1 массива в ссылку Person будет равен Bob
people


// Сравнивание массивов

// Масивы равны в том случае, если у них равно кол-во элементов, и элементы, стоящие на одинаковых позициях, равны между собой

let first01: [Int] = [1 ,2 ,3 ,4 ,5]
let second01: [Int] = [1, 2, 3, 4, 5]


first01 == second01

let third01 = [1, 2, 3, 4, 5]
first == third

// Копирование массива
// при копировании массива создается идентичная копия, с которой можно работать отдельно от основного массива

var first02 = [1, 2, 3, 4, 5]
var second02 = first02

first02[0] = 78
first02
second02

// Добавление в массив

/*
У массива есть метод 'append()', который добавляет новый элемент в массив и insert, с помощью которого можно вставить элемент в конкретное место массива
 */

var numbers02 = [1, 2, 3, 4, 5, 6]
numbers02.append(20) // добавляется новый индекс со значением элемента массива 20
numbers02.insert(30, at: numbers02.startIndex) // добавляет в массив numbers02 в начало массива numbers02

//Удаление из массива
// Данные операции позволяют удалять элементы массива:
/*
 1. remove(at: Index) удаляет элемент по определенному индексу
 2. removeFirst(): удаляет первый элемент
 3. removeLast(): удаляет последний элемент
 4. dropFirst(): удаляет первый элемент (без мутации)
 5. dropLast(): Удаляет последний элемент (без мутации)
 6. removeALL(): Удаляет все элементы массива
 */

var numbers03 = [1, 2, 3, 5, 6]

numbers03.remove(at: 4) // удаляем 4 индекс - число 6
numbers03
numbers03.removeFirst() // удаляем первый индекс (0) - т,е число 1
numbers03
numbers03.removeLast() // удаляет последний индекс (6)
numbers03
numbers03.dropFirst() // Он показывает, но не изменяет
numbers03
numbers03.dropLast() // Он показывает, но не изменяет
numbers03
numbers03.removeAll()
numbers03
// Осторожно с removeLast(). Если в массиве нет элементов может произойти краш

// numbers03.removeLast(3) - 3 удалить 3 последних индекса



// Сортировка массива

var numbers04 = [4, 6 , 1 , 3, 2 ]
numbers04.sort() // сортировка ПЕРЕМЕННОЙ

// если требуется сортировка константы, то неоьходимо

let sorted = numbers04.sorted()
sorted
numbers04

let sortedAsc01 = numbers04.sorted(by: <) // сортировка по возврастанию
// Или
let sortedAsc02 = numbers04.sorted(by: { $0 < $1 })


let sortedDesk1 = numbers04.sorted(by: >) // сортировка по возврастанию
// Или
let sortedDesk02 = numbers04.sorted(by: { $0 > $1 })


// Со строками тоже можно


var names = ["Mark", "Tim", "Jane", "Michel", "Tom"]
let sortedNames = names.sorted()
let sortNamesAsc = names.sorted(by: <)
sortNamesAsc
let sortednamesDesc = names.sorted(by: >)
sortednamesDesc



// извлечь число элемент из массива

var numbers06 = [2, 4, 5, 6, 5, 3]
let indnum = numbers06.firstIndex(of: 3) // ищет первую тройку сначала
if let indnum {
    numbers06.remove(at: indnum)
}
numbers06

// как удалить везде один элемент в массиве

var numbers07 = [2, 4, 1, 5, 6, 4, 4, 2, 4]
numbers07.removeAll(where: {number07 -> Bool in
    return number07 == 4
})
// Обьединение массивов
// Массивы с одинаковым типом данным можно обьединять с помозью операции сложения, а также функции append(contentsOf:)

var numbers08 = [1, 2, 3, 4, 5]
let numbers09 = [6, 7, 8, 9, 0]
let numbers10 = numbers08 + numbers09

numbers08 += numbers09

numbers08.append(contentsOf: numbers09)


var numbers11 = [1, 2, 8, 9, 7 ,4, 5]

let filtNum = numbers11.filter({ $0 > 4 }) // выводит все элементы больше 4
filtNum
let prefixOfNum = numbers11.prefix(while: { $0 < 7 }) //выводит элементы до числа которое больше 7
prefixOfNum
let dropOfNum = numbers11.drop(while: { $0 < 7 }) // удаляет числа до число больше 7
dropOfNum

// преобразование массива

/*
Чтобы преобразовать массив под необходимые нам параметры, испоьзуется метод map()
После преобразования все элементы образуют новые массив, который возвращает данная функция
 */

let numbers12 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let mapNum = numbers12.map({ $0 * $0 }) // каждый элемент умножается сам на себя
mapNum
let map01 = mapNum.map({ $0 + 2}) // можем прибавляет к какждому элементу массива число
map01
let string01 = map01.map({String($0) })
string01

// или можно записать так
let string02 = map01.map({map01 in String(map01)})
string02

// или

let string03 = map01.map({map01 -> String in
    return String(map01)
})
string03



// многомерные массивы
// В языке Swift есть многомерные массивы, в которых элементы выступают в качестве массивов
 
var numbers13 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
numbers13[1] // весь 2 массив
numbers13[1][0] // 1 элемент во втором массиве

numbers13[0][2] = 20 // третий элемент в 1 массиве будет равен 20
numbers13

// как перобразовывать многомерные массивы?
// flatMap() позволяет нам убрать один уровень сложности вложений

let flatNum = numbers13.flatMap({ $0 })
flatNum

// Разбор Д/З


//task 1

/*
 let males = ["xx", "xx"]
 let females = ["xx"..]
 var students = females
 
 
 for XXX in males {
 students.insert()
 }
 
 
 //task 2
 
 students.sort()
 print(students)
 
 
 //Task 3
 
 arraY.removeALL(where: {$0 <0 } )
 let asdasd = arrayA.filter (where {$0 >0} )
*/


// Словари
//Словарь - это хранилище обьектов, обращение к которым происходит по уникальному ключу. Доступ к обьекту происходит по ключу словаря

// Обьявление словаря
// Обьявление словаря происходит в формате [ тип данных ключа: тип данных обьекта]

var phones01 = [
    "Apple":"Iphone",  // ключ Apple - значение Iphone
    "Android":"Galaxy"
    
]
// Типы данных могут быть разные


var phones02 = [
    5:"Iphone",  // ключ может быть int - значение String
    10:"Galaxy"
]
 
var phones03 = [
    "Apple":1, // и наоборот ключ string, знаечние int
    "Android":2

]

// значения могут быть одинаковые, ключи обязательно должны быть разные

// Создание пустого словаря

// способ 1
var phones04: Dictionary<String, String> = [:]
// способ 2
var phones05: [String: String] = [:]
// способ 3
var phones06 = [String: String]()

// Вспомогательные массивы
// Как и в массивах мы можем использовать isempty и Count

phones04.isEmpty
phones04.count

// Значением в словаре может быть массив

var phones07: [String: [String]] = [
    "Apple": ["Iphone X", "Iphone 12"]
]

// свой пример

var phones08: [String: [String]] = [
    "Android": ["Samsung", "Xiomi"]
]


// Обновление словаря
// Также для изменнения элемента в словаре есть методы updateValue, removeValue

var phonesPP = ["iPhone X", "iPhone X"]

var phones09: [String: String?] = [
    "Apple": "iPhone12Mini",
    "Microsoft": "Lumia 1010",
    "Google": "Pixel5"
]
// образение к ключу
phones09["Apple"]



// удаление ключа

// 1 Вариант
phones09["Microsoft"] = nil
// 2 Вариант
phones09.removeValue(forKey: "Microsoft")
phones09

// обновление Массивов
// Вариант 1
phones09["Apple"] = "iPhone14Mini"
//Вариант 2
phones09.updateValue("iPhone16Mini", forKey: "Apple")
phones09["Apple"]
// можно так добавлять новые ключи
phones09.updateValue("iPhone16Mini", forKey: "AppleNew")
phones09
// Остановился на 15:15

// Перебор словаря

// Чтобы перебрать все ключи и значения словаря используется цикл for in


let phones10 = [
    "Apple": "iPhone12Mini",
    "Microsoft": "Lumia 10101",
    "Google": "Pixel5"
]
for (key, value) in phones10 {  // И для ключей и для значений
    print(key, value)
}

// Перебор ключей и знаечний отдельно:

for key in phones10.keys {
    print(key)
}

for value in phones10.values {
    print(value)
}

// также можно использовать foreach

phones10.forEach({ (key, value) in })


phones10.map ({ (key, value) in
    return "\(key) \(value)"
})


// Перебор ключей и значений отдельно


// создание словаря из массивов

/*
 В свифте есть возможность создать словарь из 2 массивов с помощью функции zip(), которая создает обьект Zip2Sequence, а после этого передает этот обьект в инциализатор словаря, к примеру
 */

let clothes = ["T-Shirt","Pants","Head","Snikers","Socks","Watch"]
let brends = ["Nike","lacoste","Supreme","Nike","Nike","Apple"]

let zipc = zip(clothes, brends)
let dict = Dictionary(uniqueKeysWithValues: zipc)
dict
// однако в это примере нет защиты от одинаковых ключей, в случае использования одинаковых ключей - выйдет краш

let clothes01 = ["T-Shirt","Pants","Head","Pants","Head","Watch"]
let brends01 = ["Nike","lacoste","Supreme","Nike","Nike","Apple"]

let zipc01 = zip(clothes01, brends01)
let dict01 = Dictionary(zipc01, uniquingKeysWith: {$1} )
dict01


struct User001 {
    let name:String
    let age: Int
}

let Users001 = [
    User001(name: "Dmitriy", age: 28),
    User001(name: "Tom", age: 16),
    User001(name: "Alex", age: 18),
    User001(name: "Sergey", age: 12),
    User001(name: "Yulia", age: 23),
    User001(name: "Kseniya", age: 25),
    User001(name: "Kseniya", age: 26),
    User001(name: "Kseniya", age: 28),
]


let dict7 = Dictionary(grouping: Users001, by: { $0.age >= 18 }) // true: age больше 18, false менее 18
dict7

// Кортеж


/*
 Котежи представляют собой набор значений, которые рассматриваются как один обьект, для создания каортежа используются скобки, внутри которых записываются все элементы кортежа:
 */

var probs = (23, "Tom")
var probs2 = (23, "Tom", false)

// мы можем явно указывать тип данных в кортеже:

var probs3: (Int, String) = (23, "Tom")

// Обращение к кортежу
// Мы можем присвоить значения из кортежа пременным или константам:

let age01 = probs3.0
let name02 = probs3.1

// или так

let (age03, name03) = probs3
// если нужно указать только 1 параметр, то

let (_, name04) = probs3
name04

// по отдельности мы можем изменять элекменты кортежа, если кортеж определен как переменная:

var probs4 = (name: "Tom", age: 12)
probs4.age = 321
probs4.name = ""

// Множества

// Множества (Set) Представляют собой неупорядчные коллекции уникальных элементов

// В отличиии от массивов в множествах элементы должны быть уникальные, мы не можем определить несколько элементов с одним и тем же значением

// Для определения множества у переменной или константы устанавливается тип Set, где Element - это тип данных

// Множества можно проиницализировать при помощи

let numbers16: Set<Int> = [1, 2, 3, 4, 5, 2]
let numbers17 = Set([1, 2, 3, 4])
let numbers18: Set<Int> = []
let numbers19 = Set<Int>()

// Отличие от массива что при сравнении множеству все равно какие элементы сравниваешь

let numbers20: Set<Int> = [1, 2, 3, 4, 5]
let numbers21: Set<Int> = [1, 2, 3, 8, 5]
numbers20 == numbers21
// не понял почему false

let numbers24 = Set(arrayLiteral: 2, 3, 4, 5, 5)
// Как превратить массив в множество

let numbers22 = [10,2,23,2]
let numbers23 = Set(numbers22)

// Работа с множествами

// Метод insert () позволяет добавить новый элемет в множество:

var numbers25 = Set([1, 2, 3, 4])
numbers25.insert(21)
numbers25

// Также множества поддерживают ряд операций по удалению :
// removeAtIndex(): удаляет элемент по опр индексу
// removeFirst(): удаляет первый элемент
// remove(): удаляет какой -то определенный элемент по значению
// removeall(): удаляет все элементы

numbers25.remove(1)
numbers25


// Еще один метод contains() позволяет проверить наличие в множестве элемента

numbers25.contains(4)

// МНожество можно упорядочить методом sorted()

var numbers26: [Int] = numbers25.sorted()

// Операции над множествами
/*
Особую ценность среди операций представляют операции, предназначенные специально для множеств:
 1. Обьединение
 2. Пересечение
 3. Разность множеств симетричная и просто разность
 */
var numbers27: Set = [6, 7, 8, 9, 1]
var numbers28: Set = [1, 2, 3, 4, 5]


numbers27.intersection(numbers28) //пересечение множеств, возвращает общие для обоих множеств элементы
numbers27.symmetricDifference(numbers28) // возвращает не общие, не пересекающейся для обоих множеств элементы ( симметричная разность )
numbers27.union(numbers28) // обьединение двух множеств
numbers27.subtracting(numbers28) // разница множеств, возвращает элементы первого множества, которое отсутсвует во втором

// Цикл For in
// с помощью цикла мы можем перебрать элементы коллекции (массивы, множества, словари) или последовательности

// Он имеет следующую форму:

// for Обьект_последовательности in последовательность { }

// Например переберем элементы массива

let numbers29: ClosedRange<Int> = 1...5 // когда стоит 3 точки мы идем до 5 вкл или 2 то не вкл 5
for item in 1...5 {
    
    print(item)
}
/*
 Выражение 1...5 образует последовательность из пяти числе от 1 до 5, И цикл проходит по всем элементам последовательности. При каждом проходе он извлекает одно число и предает его в переменную item, Таким образом цикл сработает пять раз
 
 С помощью оператора Where можно задавать условия выборки из последовательности элементов
 */

for i in 0...10 where i % 2 == 0 { // послед от 1 до 10 где вывод только четные числа ( при делении на 2 не обр остаток)
    print(i)
}

// Цикл While


/*
 Оператор проверяет некотрое условие, и если оно возвращает true, то будет выполнен блок кода, этот цикл имеет след форму:
 
 while условие {
 // действия
 }
 */

var i = 10
while i > 0 {
    print(i)
    i -= 1
}
// Функция которая определяет является ли число палиндромом

func isPalindrome(_ x: Int) -> Bool {
    if x < 0{
        return false
    }
    var inputNumber = x
    var ouputnumber = 0
    
    while inputNumber != 0 {
        let digit = inputNumber % 10
        ouputnumber = ouputnumber * 10 + digit
        inputNumber /= 10
    }
    
    return ouputnumber == x
}

isPalindrome(10)
isPalindrome(1221)
isPalindrome(1001)
isPalindrome(12312)


// Цикл repeat-while

/*
 Цикл сначала выполняет один раз цикл, и если некоторое словие возвращает true, то продолжает выполнение цикла, он имеет следующую форму:
 */

var numbers30 = 10
repeat {
    print(numbers30)
    numbers30 -= 1
} while i > 0

// Оператор continue/break

/*
 Инногда возникуает ситуация, когда требуется выйти из цикла, не дожидаясь его завершения, в этом случае мы можем воспользоваться оператором break
 */
for i in  0...10 {
    print(i)
    if i == 5 {
        break
    }
}
print("Finish")
// теперь поставим сеье другую задачу, а что если мы хотим, чтобы при проверке цикл не завершался, а просто прееходил к следующему элементу, для этого мы можем воспользоваться оператором continue

for i in  0...10 {
    print(i)
    if i == 5 {
        continue
    }
    print(i)
}
print("Finish")

// Typealias
// чтобы огромный обьем данных не использовать строке мы может присвоить значения typealias
// typealias Chesn = ""




// разбор домашки
// task1
/*
var randon = (film: "Click", number: 7, Meal: "Pizza")
let  (film01, number0, Meal01) = randon
var randon1 = (film: "Forest", number: 10, Meal: "Suschi")
var randon2 = randon
randon = randon1
randon1 = randon2


//task 2
let sdad01 = [
    "mark" :  [
        "Alex": 4
    ]
]


//task 3


typealias Chessman = [String: (alpha:Character, num: Int)?]
let dict001: Chessman = [
    "Белый король": (alpha: "A", num: 3)
]
if let info = dict001["белый король"] { //действие
}
else {
}


//task 4

for key in Chessman.Keys {
}


*/


// Функция это отдельный кусок кода, мы даем этому фрагменту имя, потом по имени вызываем выполнение

/* Хорошая функция:
 
 1 Решает одну задачу
 2 Имя функции говорит, что она делает
 3 автономна
 
 Параметров у функции нету
 
 */

func displaySun() {
    // some code
}

// Входящие параметры

func save(file:Data) { // принимает какое то значение
    // Some code
}


 // выходящие (возвращаемые параметры)

func randomColor() -> UIColor { //после стрелрочки указываем тип данных который нужно вернуть
    // ..
    return .yellow // сам цвет
}


// Все вместе

func calculateRefuelFlight(distance: Double, weight: Double ) -> Int {
    let fullDistanceWeight = Int(weight * distance)
    return fullDistanceWeight * 120 // 120 - расход топлива самолета, взято головы
}
let fuel = calculateRefuelFlight(distance: 30, weight: 120)



// Значения по умолчанию

// любым исходящим параметрам для функции можно указать значения по умолчанию:


func calculateRefuelFlight01 (distance: Double, weight: Double = 200 ) -> Int {
    return Int(weight*distance) * 120
}

calculateRefuelFlight01(distance: 6) // по умолчанию weight = 200
// но можно задать и в ручную
calculateRefuelFlight01(distance: 3, weight: 10)


// ВАЖНО! Параметры со значениями по умолчанию принято писать последними


// Правила наименования
/*
 
 1 lowerCameCase
 2 UpperCameCase
 3 snake_case
 4 SCREAMING_SNAKE_CASE
 5 kebab-case
 6 Train-Case
 */

// Ярлыки и названия параметров

// пример с ярлыком

func someFunction01(argumentLabel parameterName: Int) {
    print(parameterName)
}
someFunction01(argumentLabel: 2)

// тот же пример без ярлыка

func someFunction02(parameterName: Int) {
    print(parameterName)
}
someFunction02(parameterName: 3)


// можно указывать ярлык без значения

func display01(_ number: Int) {
    print(number)
}
display01(12)



// примеры

// не исп ярлыки
func displayNumber (number: Int) -> Int {
    return number
}

// исп 2 пустых ярлыка
func displayNumber01(_ number: Int, _ number2: Int) {
    print("\(number) \(number2)")
}
// использование 1 ярлыка со значением второй без
func displayNumber02(peopleOnPlanet count: Int, _ countd: Int) {
    print("On the Earth living \(count) guys und \(countd) girls")
}

let numb01 = displayNumber(number: 5)
displayNumber01(12, 24)
displayNumber02(peopleOnPlanet: 10, 15)
 
// Оператор Return
/*
 Условия:
 1 Функция имеет возвращаемый параметр
 2 Функция производит лишь 1 действие
 
 Результат: Можно не писать ключевое слово return
 */
 
// пример:
func calculateRefuelFlight03 (distance: Double, weight: Double = 200 ) -> Int {
    Int(weight*distance) * 120
}
 
calculateRefuelFlight03(distance: 5)
 

// Оператор inout

/*
 Все параметы, передаваемые в функции, являются константами, поэтому вы не можете их изменить. Если вы хотите, вы можете передать параметры как inout, что означает, что они могут быть изменены внутри вашей функции
 */

// В классическом виде

func doubleInPlace(number: Int) -> Int {
    return number * number
}
doubleInPlace(number: 3)

// с оператором inout

func doubleInPlace01(number: inout Int) { // в данной функциии мы изменяем параметр inout
    number *= number
}

var myNum = 3 // создаем переменную и присваиваем ей значение
doubleInPlace01(number: &myNum) // далее мы переменную меняем на inout с & ( амперсант )
print(myNum)

// Области видимости

/*
 Области видимости - механизм доступа к коду из других модулей
 ВАЖНО!  Принцип в Swift: сущность не может быть определенна в условиях другой, которая имеет более низкий уровень видимости
 */
func printSomeNum() {
    let num = 4
    print(num)
}
printSomeNum




public class Animal { // Уровень public означает что данную функцию нужно сделать доступ из вне
    private var name: String // Обьявляем приватной переменной name
    internal init(name:String) { // internal в рамках 1 приложения/target будет доступна, любые функции которые мы пишем по умолчани/ internal
        self.name = name
        sayHello()
    }
    internal func sayHello() {
        print("Hello \(name)") // Мы можем обращаться к name внутри нашей функции
    }
    
}
let dog = Animal(name: "dog")
dog.sayHello()
// dog.name  - Мы не можем обращаться к приватному обьекту за пределами нашей функции

// Но Internal - не означает public - это только внутри обьекта
// Animal.name


// FILEPRIVATE - блокирует не в рамках обьекта, а врамках .swift файла


struct Example {
    fileprivate var number: Int
    private struct Options {
        // ...
    }
}



// private - ограничен обьктом
// fileprivat - ограничен swift файлом
// internal - ограничен модулем/приложением
// public - ничем не ограничен


// Уровни public vs open

/*
 public - в модуле, где сущность обьявлена, и в любом модуле можно
  - Использовать
open - аналогично Public, но добавляет в любом другом модули возможности:
 - наследоваться
 - переопределять
 Явно используется при разработке фреймворков, библиотек и отдельных модулей
 */


// еще пример

class Example02 {
    private var count = 0
    public func calculate(source: Int) -> Int {
        func nestedCalculation() -> Int {
            count + source
        }
        return nestedCalculation()
    }
    func anotherFunc() {
    }
}

// разбор домашки

//task 1

var strings = ["",""]
func delete (_ param: String) {
    strings.removeAll(where: { $0 == param})
}
func append (_ param: String) {
    strings.append(param)
}

//task 2

/*
 var data: [Int: Double]
 for key, value in data {
 data["asd"] = xxx
 }
 */



var eat = ["pizza","sushi","pasta"]
func delete01 (_ param: String) {
    eat.removeAll(where: { $0 == param})
}
delete01("pizza")
print(eat)

func append01 (_ param: String) {
    strings.append(param)
}
 
/* func display01(_ number: Int) {
    print(number)
}
display01(12)
*/



/* func userPoint02(key: Int, value: Double) -> Int {
    print("\(key) \(value)")
}
userPoint02(key: <#T##Int#>, value: <#T##Double#>)
*/


 var eat03 = ["pizza","sushi","pasta"]

 func deleteEat (_ param: String) {
     eat.removeAll(where: {$0 == param})
     }

 deleteEat("pizza")
 print(eat03)
 // Что произойдет, если попытаетесь удалить значение, которого нет в Хранилище? Напишите, что в этом случае вы можете изменить в своей функции и внесите в нее изменения.
 deleteEat("cola")
 print(eat03)
 // В данном случае если значение не найдено, ничего не удалится, могу об этом оповестить
 func deleteEat02 (_ param: String) {
     if var eat02 = eat03.firstIndex(of: param){
         eat03.remove(at: eat02)
     }
     else {
     print("not found")
     }
 }

 deleteEat02("cola")
 print(eat03)
 // Теперь при выводе элемента которого нет в массиве, мы получим принт not found
 func addEat (_ param: String) {
     eat03.append (param)
 }
 addEat("Soup")
 print(eat03)
 

/*
 userPoints
 print(userPoints)


 func countPoint(_ userPoints: [Int: Double]) -> [Int: Int] {
     var count: [Int: Int] = [:]
     for (key, value) in userPoints {
         count [key] = (Int(value) / 10)
     }
     return count
 }
 var count = countPoint(userPoints)
 print(count)

 */

var ostNum01: [String: Int] = ["ost1": 0, "ost2": 6, "ost3": 11, "ost4": 18, "ost5": 30, "ost6": 50, "ost7": 60]
ostNum01
print(ostNum01)


func resultTime(Begin first: String, last: String) -> Int {
    return [ostNum01[first], ostNum01[last]].compactMap{$0}.sorted().reduce(0, {$1 - $0})
}
var way =  resultTime(Begin: "ost5", last: "ost1")
print(way)
if way <= 0
{
    print("not found")
}


// Сделать словать из ключа и значений
// Написать функцию с получением двух стрингов, и вывода Int
// Написать два guard - guard потому что можно к нему обращаться за пределами функции

// создание словаря

let stops: [String: Int] = [
    "First" : 0,
    "Second" : 5,
    "Third" : 7,
    "Fourth" : 12,
    "Fifth" : 20,
    "Sixth" : 25,
    "Seventh" : 30,
]

func finalTime (At first: String, to last: String ) -> Int {
    guard var timeFirstStop = stops[first] else {
        print("Not found: \(first)")
     return -1
    }
    guard var timeLastStop = stops[last] else {
        print("Not found: \(last)")
        return -1
    }
    var trip = timeLastStop - timeFirstStop
    return trip > 0 ? trip : -trip
}
var way01 = finalTime(At: "Sixth", to: "First")

print(way01)


// let num3 = (num2 >= num1) ? num2 : num1


// HW GIT

/*
Task 1
 
1 - https://github.com/DmitriyKly/hwNetology_1.git

2 - b1f46b40469af58be8b37280ae73ce6676b95579
Task 2
 */




