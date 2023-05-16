import UIKit

// Lesson  1
protocol sobaka {
    var name:  String { get set }
    var breed: String { get set }
    var sex: String { get set }
    
    func bark()
    func waveTail()
    func run()
}
    
    
    class HomeDog: sobaka {
        
        var name: String = ""
        
        var breed: String = ""
        var sex: String = ""
        
        func bark() {}
        
        func waveTail() {}
        
        func run() {}
        
        func playWithOwner() {}
    }
    

// абстрактно описываем


protocol Pet {
    
    var name: String { get }
    var spicies: String { get }
    var sex: String { get }
    
    func eat()
    func sleep()
    func spendTimeWithOwner()
    


    
}
// создаем класс dog которое должно удовлетворять требованием Pet

class Dog: sobaka {
    func run() { }
    
    
    // он обязан иметь эти переменные как в Dog
    var name: String = ""
    var spicies: String = "Dog"
    var sex: String = ""
    
    var breed: String = ""
    
    // Инициализируем что можем зать имя, пол и породу
    func Init(name: String, sex: String, breed: String) {
        
        self.name = name
        self.sex = sex
        self.breed = breed
        
    }
    
    // он также обязан включать себя функции в Dog
    
    func eat () {}
    func sleep() {}
    func spendTimeWithOwner() {}
    
    // А также включать в себя дополниетьные функции ( те которые не указаны к class )
    
    func play() {}
    func waveTail() {}
    func bark() { print("Bark by bass") }
    func bite() {}
    
}

// создадим класс Корги который унаследует все функции Dog


// HomeWork 1

// Task 1

// Для каждого принципа ООП приведите 2-3 примера из жизни.

/*
Абстракция
Инкапсуляция
Наследование
Полиморфизм
*/

/*
 Абстракция: Карта памяти, Велосипед
 
 Инкапсуляция: Посудомоечная машина, тостер
 
 Наследование: Животные - воздушные, наземные, водные
 
 Полиморфизм: Дверная ручка, дверной замок
 
 */

//Task 2

/*
 Для каждого базового понятия ООП приведите 2-3 примера из жизни. Опишите их текстом.
 
 Класс
 Объект
 Свойства объектов
 Методы

 Класс: Телефон
 Обьект: IphoneX
 Свойства обьектов: Черный
 Методы: Имеет возможность звонить
 
 Класс: Человек
 Обьект: Дмитрий
 Свойства обьектов: 29 лет, брюнет
 Методы: пытается сдать дз
 */







// Lesson 2

// Класс ( тип ) - тот обьект в котором описана абстракция
// Обьект - Конкретика абстракции
// Свойства - это переменные или константы внутри класса
// Интерфейс - требование к организации структур
// Композиция и агрегация способ взаимодейтсвия между типами

// Именованные типы в Swift

/*
 1. Protocol - абстрактный набор методов и свойств, задающий поведение для широкого круга типов
 
 2. Class - описание обьекта ( шаблон ), обьект - экземпляр класса
 
 3. Struct - Структура данных, в Swift у нее есть свой инициализатор по умолчанию
 
 4. Enum - перечисление, в Swift это могучий тип
 
 */

// Инициализация - пример

struct Material {
    let brick: String
    let concrete: String
    let steel: String
    let tiles: String
}

class House {
    private let basement: String
    private let walls: String
    private let roof: String
    init(material: Material) {
        self.basement = material.concrete + material.steel
        self.walls = material.brick
        self.roof = material.tiles
    }
}


// Агрегация и Композиция

// пример Агрегации

class Apple {
    
    // ...
}

// Свойство агрегатора держит ссылку на агрегируемые обьекты


class Appletree {
    
    var fruits: [Apple] = []
    
}

// Но сами обьекты инициализированы вне агрегатора, ссылка на них не перестанет существовать, если агрегатор перестанет на них ссылаться

let appleRed = Apple()
let applepink = Apple()
let applegreen = Apple()
Appletree().fruits = [appleRed, applepink, applegreen]


// Пример Композиции
class Human {
    //...
}

// владелец имеет власть над инициализораванным обьектом

class Planet {
    
    let inhabitants = Human()
}

// и никто больше не имеет дсотупа к включенному в композицию обьекту


let earth = Planet()
earth.inhabitants

// Примеры



protocol ATM {
    var balance: Int { get }
    
    func enterpin(_ pin: Int)
    func withdraw(sum: Int) -> Int
    
}

// Все автоматы умеют проверять баланс, вводить пин коды и снимать бабки

class PermataATM: ATM {
    func enterpin(_ pin: Int) {}
    var balance: Int {self.checkBalance() }
    func withdraw(sum: Int) -> Int { return 0 }
    func checkBalance() -> Int {
        return 100
    }
    func checkPin(_ pin: Int) -> Bool {
        return true
    }
}

class ShoppingCenter {
    var atm: ATM
    
    let legalOffice: [String]
    
    init(atm: ATM) {
        self.legalOffice = ["Vasya", "Egor", "Sasha"]
        self.atm = atm
        
    }
    
}

let shoppingATM = PermataATM()
// Здесь используется подход агрегации когда 1 обьект использует другой без сильной ссылки
let center = ShoppingCenter (atm: shoppingATM)



// Пример


// Рецепт - это алгоритм, мы варажаем его через протокол, набор необходимых свойств и методов для реализации алгоритма

protocol Recipe {
    var eggsPerDish: Int { get set }
    func prepareEggs()
}

// имплентация протокола подразумевает, что всякий тип должен реализовывать свойства и методы протокола

class ScrambledChickenEggRecipe: Recipe {
    var eggsPerDish: Int = 2
    
    func prepareEggs() {
        smashEggsWithKnife (eggs: eggsPerDish)
    }
    
    private func smashEggsWithKnife(eggs: Int) {}
}

// Даже если это потребует множествуа дополнительных действий

class ScrambledDinosaurEggRecipe: Recipe {
    var eggsPerDish: Int = 1
    
    func prepareEggs() {
        findDinosaur()
        stealEggs(eggs: eggsPerDish)
        sawWithHacksaw()
    }
    
    private func findDinosaur() {}
    private func stealEggs(eggs: Int) {}
    private func sawWithHacksaw() {}
}

// Повару все равно, из каких яиц готовить яишницу - абстракция не заставляет его вникать в детали
protocol ScrambledCook {
    func prepareScrambledEgg(for recipe: Recipe)
}

class Cook: ScrambledCook {
    
    func prepareScrambledEgg(for recipe: Recipe) {
        recipe.prepareEggs()
        mixInTheBowl()
        putPanOnFire()
        startCooking()
        throwShells()
    }
    private func throwShells() {}
    private func startCooking() {}
    private func putPanOnFire() {}
    private func mixInTheBowl() {}
}

let recipe = ScrambledDinosaurEggRecipe()
Cook().prepareScrambledEgg(for: recipe)

    
    
// агрегация это когда вы создаете обьект вне и даете в него ссылку в другой обьект
// пример яблоня на ней растут яблоки, если срубите яблоню, она упадает, но яблоки  никуд а не исчезнут

//Композиция все органы есть в человеке, при умирании человека умирают и органы

// Агрегация = слабая ассоциация
// Композиция = сильная ассоциация


// HomeWork 2


// task 1

// enum

enum Continents {
    case euroAsia (size: String)
    case africa (size: String)
    case northAmerica (size: String)
    case southAmerica (size: String)
    case australia (size: String)
    case antarctida (size: String)
}

var africa = Continents.africa(size: "30 370 000 km")
print(africa)

// class

class IPhone {
    var color: String
    var memoryGb: Int
    var model: String
    
    func call() {}
    func textMessage() {}
    
    init(color: String, memoryGb:Int, model: String)
    
    {
        self.color = color
        self.memoryGb = memoryGb
        self.model = model
    }
}

var iPhone10: IPhone = .init(color: "Red", memoryGb: 128, model: "X")
print("Модель: \(iPhone10.model), Цвет: \(iPhone10.color), Память: \(iPhone10.memoryGb) GB")


struct Snowboard {
    
    var width: String
    var height: String
}






// Lesson 3


// Контроль доступа

/*
 
 Это специальные синтаксические контрукции. Их задача управлять область видимости каждого члена класса
 
В Swift 5 модификаторов доступа:
 
1. open и public
2. Internal
3. fileprivate и private
 
 */


// Методы доступа


/*
 
 Методы доступа позволяют организовать дополнительный контроль и обработку взаимодействия со свойствами обьекта снаружи
 
 Вы о них будете слышать как о "гетер"(getter) и "сеттер" (setter)
 
 */

protocol Recipe01 {
    var eggsPerDish: Int { get set } // Это означает что мы можем и читать и писать одновременно
    func prepareEggs()
}

// пример 1

protocol Example {
    
    var example: Int { get set }   // Может быть Get ( читать ), может быть Get (читаем) и set (записываем)
        
}


class ExampleClass: Example {
    
    var example: Int = 10
    
}

var exampleVar: Example = ExampleClass()
exampleVar.example
exampleVar.example = 20


// пример 2

// есть автобус

protocol Bus {
    // внутри автобуса могут быть люди
    
    // людей мы пожем увидеть и изменить
    var people: Int { get set }
}

// Теперь создаем класс, говорим что он городской автобус и принадлежит протоколу автобус

class CityBus: Bus {
    
    // в нем изначально 0 людей
    var people = 0
    
}

var busOnTheWay: Bus = CityBus()
busOnTheWay.people = 10
busOnTheWay.people += 10
print (busOnTheWay.people)


// Переопределение и Перезагрузка


// Переопределение - это метод замены или добавления поведения для наследующего обьекта - overrride

// Перезагрука

/*
 
 Это придание ДРУГОГО поведения методу с тем же навзванием в рамках одного обьекта, или реализация статического
 (ad hoc) полиморфизма
 
 Традиция 1 процедура = 1 название уходит корнями во времена, когда программа надо было разбивать на подпрограммы
 с уникальным названиями
  
 */

// В ООП метод однозначно определяется сигнатурой:
/*
 1 название
 2 кол-во параметров
 3 тип параметров
 
 Переопределение возможно только при наследовании
 Перегрузка возможна только внутри одного класса
  
 */

// Пример переопределения

class Example01 {
    
    func display() {
        print("example")
    }
    
    
}

class OverrideExample01: Example01 {
    override func display()  {
        super.display()
        print("override example")
        
    }
}

// Пример перегрузки

class Example02 {
    
    func display (_ source: String) {
        print(source)
    }
    
    func display (_ source: Int) {
        print(source)
    }
    
}

Example02().display("to be continued")
Example02().display(5)


// Еще пример

class drawer {
    
    func draw(_ result: Int){
        print(result)
    }
    func draw(_ result: String){
        print(result)
        
    }
    
        func draw(_ result: Double) {
            print(result)
        }
    
    func draw(_ result: Bool) {
        print(result)
    }
    
    }
    

drawer().draw(12)
drawer().draw(0.12)
drawer().draw("Hello world")
drawer().draw(true)



class Phone01 {
    
    func playMelody() {
        print("Play ring")
    }
    func tapSMS() {
        print("Tapping an SMS")
        
    }
}

class Smartphone01: Phone01 {
    
    override func playMelody() {
        print("Play mp3")
    }
    override func tapSMS() {
        super.tapSMS()
        print("Add Emodji")
    }
}

Smartphone01().tapSMS()
Smartphone01().playMelody()

// Пример с ограничением доступа через get

protocol Navigator {
    
    var enterPlace: String {get set} // место мы можем вводить
    var checkDistance: Int {get} // Дистанцию которую мы получим - изменить не получится
    
}

class GoogleMaps: Navigator {
    var enterPlace: String = "" {
        didSet {
            checkDistance = 100
        }
    }
    
    var checkDistance: Int = 0
}

var googleMaps: Navigator = GoogleMaps()
googleMaps.enterPlace = "Batu Bolong"
print(googleMaps.checkDistance)

// Value и Reference types - категории типов языка программирования

// value type типы данных при присвоении всегда копируются

// Regerence types типы данных не копируются при присвоени, а только получают адрес, где лежат данные


// пример


// во время учебы все получают домашнее задания, кто то выполняет их сам, а кто-то списывает


// Пример Value type, когда Дима копируют у Анны ДЗ, и д

struct Hometask {
    var result: String
}

var annaTask = Hometask(result: "Result of my work")
let dimaTask = annaTask

annaTask.result = "Ops, i did it wrong"

print(annaTask)
print(dimaTask)


// Reverence type - Текст ДЗ, который размещается в интернете в докумените, един для всех
// Если его изменить, все увидят изменения

// Пример Reference Type


class Hometask01 {
    var task: String
    init (task: String) {self.task = task
    }
}
struct Student {
    
    let task: Hometask01
    
}

let lessonTask = Hometask01(task: "To do something")
let anna = Student(task: lessonTask)
let dima = Student(task: lessonTask)

print(anna.task.task)
print(dima.task.task)

lessonTask.task = "Don't do it right now!"

print(anna.task.task)
print(dima.task.task)


/*

 В языке Swift
 
 Value type
 Все структуры, перечисления и кортежи являются типами значенний
 
 Reference type
 Классы и функции являются ссылочными типами
 
 
 */

struct Hometask02 {
    var result: String
    
    mutating func thingAgain() {
        self.result = "New answer"
    }
}

var kseniaTask01 = Hometask02(result: "Result of my work.")
var dimaTask01 = kseniaTask01

kseniaTask01.result = "Ops. i did it wrong..."

print(kseniaTask01)
print(dimaTask01)

dimaTask01.thingAgain()

print(kseniaTask01)
print(dimaTask01)






// Lesson 4


// Классы и Структуры


/*
 Классы и струтуры - это конструкции языка, являющейся типами данных, в Swift классы имею такую же функциональность как и струтуры за малым различием
 */



/*

 Что могут струтуры
 
1. Имеют свойства (property) и хранимые (stored) и рассчитываемые (calculated)

2. Иметь методы с реализацией функциональности
 
3. Определять subscript
 
4. Определять различные методы инициализации ( конструкторы )

5. Имеют возможность для расширения функциональности  (extension)
 
6. Реализовать протоколы (Conform to protocols)
 
 */


/*
 
Что могут классы:
 
1. Все, что могут структуры

2. Наследовать функционал и свойства другого класса
 
3. Имеют механизм приведения типов (Type casting)
 
4. Имеют деструкторы (deinit)
 
5. Имеют механизм подсчета ссылок, потому что это reference type
 
 */


// Инициализация в струтурах и классах

/*
 
Для всех структур в SWIFT автоматически создаетсмя init (инициализатор) метод для всех полей струтуры, если вы сами не определили любой иной
 
Для классов такого механизма нет, Вам всегда необходимо инициализировать значения полй класса или создавать метод инициализации их
 
 */

// Пример стурктуры

struct DefaultExample01 {
    
    let field: Double
    let state: String
    }

// Пример класса

class Example05 {
    
    let field = 3.14
    var state: String = ""
    
    func Init(state: String)
    {
        self.state = state
    }
    
}


// Struct vs class. Что выбрать?

/*
Для выбора ответим на вопросы:
1. Будем использовать наследование?
2. Нам требуются преобразование типа (type casting)?
3. Будем использовать метод deinit для освобождения ресурсов ?
4. Нам нужно, чтобы изменения значений было сразу у нескольких обьектов?
 */

// Есть хоть один ответ да? - выбирай Class

// Если есть хоть 1 ответ нет - выбирай Struct



// Проще говоря если это что то не сложное используем Struct, если сложное - class


// Перечисления

/*
 
 Перечисления это тип данных с конеченым списком предопеределенных значений
 
В процессе компиляции знаечния (case) перечислений представляются при помощи целых чисел, если не опеределен иной RawValue тип,
Значения (case) в перечислениях (enum) являются уникальными
 
 */


// Пример

enum City {
    case moscow
    case tver
    case kolpino
}

let current = City.moscow
print(current)



// Associated значения

// К перечислениям в Swift можно добавить связанные значения

// пример

enum ControllerState {
    
    case loading
    case suspend(TimeInterval)
    case loaded(Int)
    case error(code: Int, text: String)
}


// Использование Associated

let current01 = ControllerState.loading

switch current01 {
case let .error(code: errorCode, text: errorText) :
    print("Controller failed wirh error: \(errorText) and code: \(errorCode)")
    
case .loading:
    break
    
case .loaded(let value):
    print(value)
    
case .suspend(_):
    break
}

// Raw значения

/* Raw значение - это тип данных, с помощью которого представлены значения в перечислении, по умолчанию это Int, но мы можем указать любой из:
 
 1. String
 
 2. Integer
 
 3.Floating-point
 
 */
/*
enum Names: String {
    case anna
    case dima
    case irina = "irina"
    case misha = "Michael"
}

let current02 = Names.dima

print(current02.rawValue)



enum City02 {
    case moscow
    case tver
    case kolpino
}

enum Country: String {
    
    case russia = "Russia"
    case indonesia = "Indonesia"
    case thailand = "Thailand"
}

print (City02.kolpino)
print(Country.indonesia.rawValue)

let country = Country(rawValue: "Thailand")
print((type(of: country?.rawValue)))
// print(country)

enum Car {
    case mersedes(Int)
    case uaz
}

let car = Car.mersedes(3)

switch car {
    
case let .mersedes(passengers):
    print(passengers)
    
case .uaz:
    print("uaz")
}


switch car {
    
case .uaz:
    print("uaz")
    
case .mersedes:
    print("mersedes")
}


if case let .mersedes(passengers) = car {
    print(passengers)
}
*/


// HomeWork 4

//Task 1

enum Channel: String {
    
    case first = "1 канал"
    case second = "2 Канал"
    case third = "3 Канал"
    
}

class TV {
    
    var model: [String:String]
    var isOn: Bool
    var currentChannel: Channel
    init (model: [String:String], isOn: Bool, currentChannel: Channel)  {
        self.model = model
        self.isOn = isOn
        self.currentChannel = currentChannel
    }
    
    func showCurrentChannel() {
        if isOn {
            print("Телек \(model) показывает \(currentChannel.rawValue) ")  }
        else
            { print("Включи ящик") }
            
        }
    
    }

var television = TV(model: ["Samsung":"T650"], isOn: true, currentChannel: Channel.first)

television.showCurrentChannel()
 
// Сделайте изменение состояния телевизора ( на свой выбор )

var television2 = TV(model: ["LG":"E350"], isOn: false, currentChannel: Channel.second)
 
television2.showCurrentChannel()


struct NewFeature {
    
    var volume: Double
    var color: Bool
    
}

class New_TV: TV {
    
    var volume: Double = 0
    var newFeature: NewFeature {
        willSet {
            if newValue.volume > 1.0 {
                volume = 1.0
            }
            else if newValue.volume < 0 {
                volume = 0
            }
            else {
                volume = newValue.volume
            }
        }
    }
    
    
    
    init (model: [String:String], isOn: Bool, currentChannel: Channel, newFeature: NewFeature) {
        self.newFeature = newFeature
        super.init(model: model, isOn: isOn, currentChannel: currentChannel)
    }
    
    
    
    
    override func showCurrentChannel() {
        if isOn {
            
            print("Телек \(model) показывает \(currentChannel) с громкостью \(volume)")
            
            if newFeature.color {
                print("Включен цветной режим")
            }
            else { print("Включен Ч/Б") }
            
        }
        
        else   {
            print("Включи ящик")
            
        }
        
    }
}


var television3 = New_TV(model: ["Panasonic":"F150"], isOn: true, currentChannel: Channel.first, newFeature: NewFeature.init(volume: 0.0, color: true) )




television3.newFeature.volume = 0.5
television3.showCurrentChannel()
television3.newFeature.volume = -4
television3.showCurrentChannel()
television3.newFeature.volume = 4
television3.showCurrentChannel()





// Lesson 5 Свойства и методы в Swift

// Свойства в Swift

/*
Свойства - это переменные и константы, которые вы определяете внутри обьекта. Свойства бывают разных видов
 
Свойства - это хранилища, обьявленная в пределах обьектного типа данных, они позволяют хранить и вычислять значения, а также получать доступ к этим значениям.
 
1. Хранимые свойства могут использоваться в струтурах и классах
 
2. Вычисляемые свойства могут использоваться в перечислениях, структурах и классах
 
 
Хранимое свойство = это константа или переменная, обьяленная в обьектном типе и хранящая опредленное значение
 
Его возможности:
 
1. Получает значение по умолчанию, если при создании экземпляра ему не передается никакого значения
 
2. Получает значение в инициализаторе, передаваемое при создании экземляра в качестве входного аргумента. Данное значение называется исходным
 
3. Меняет значение в процессе использования экземляра
 
 */


// Хранимые свойства могут быть "ленивыми". Знаяение будет проиницализированно только при первом обращении к нему
 
// lazy var example05 = "4"



// вычисляемые свойства хранятся исключительно в переменных (var ), они не хранят значения, а вычисляют его

struct Profile {
    
    let name: String = "Dmitriy"
    let surname: String = "Klyuev"
    
    var fullname: String {
        return name + surname
    }
     
    
    // Усложненная запись
    
    var fullname01: String {
        get { name + surname
            
        }
        
    }
    
}

 
// В случае если мы не присваемваем значение, должно быть замыкание, а в нем оператор return

// Гетеры и Сететры вычисляемых свойства

// Гетер выполняет некоторый код при запросе значения выч свойства

// Сетер выполняет какой то код при попытки устновки значения выч свойства


// Гетер срабатывает при запросе значения свойства

// Сетер срабатывает при попытки установить новое значение свойству


// Пример

class TextField {
    
    private var title: String = ""
    
    var titleColor: String {
        get {
            return title
        }
        set {
            self.title = newValue
        }
    }
    
}


// Наблюдатели свойства

// Это специальные функции, которые вызывются перед или после нового хранимого свойства

// Выделяю два вида наблюдателей

// willSet - Вызывается перед установкой нового значения

// didSet вызывается после устновки нового значения


// Пример

struct Auto {
    
    var colour: String = "Black" {
        didSet {
            print("didSet: \(oldValue)")    // Здесь будет предыдущее значение
        }
        willSet {
            print("willSet: \(newValue)") // Здесь будет изменененное значение
        }
    }
}


var porsche = Auto()
porsche.colour = "White"

// Методы класса
/*
 
Методы - это функции которые связаны с определенным типом
 
Классы, структуры и перечисления могут определять методы экзменляра, которые включают себя определенные задачи и функциональность для работы с экземеляром данного типа
 

Методы экземляра являются функциями, которые принадлежат экземлярами конкретного класса, структуры или перечисления
 
Они обеспечивают функциональность тих экземляров, давай возмоджность доступа и изменения свойств экземляра, либо обеспечивая функциональность экземляра в соотвествии с его целью
 
Методы экземляра имеют абсолютно одинаковый синтаксис как и функции
 
 */


// Пример




// экземляр класса он называется только потому что мы можем к нему обратится только когда он находится в памяти (т.е) проинициализован


class textField {
    private var title: String = ""
    var titleColor: String {
        get {
            return title
        }
    }
    class func printNewValue01() { print ("hi") } // А это метод класса, отличие его в том, что мы можем к нему обратится
    func sayHi() -> String { return "hi" }  // самый обычный метод экземпляра
}

textField.printNewValue01()
textField().sayHi()

// Свойство self

/*
Каждый экземляр типа имеет неявное свойство self, которое ялвляется эквивалентно самому экхемпляру, Вы используете свойство self для ссылки на текущий экземляр, внутри методов этого класса
 
В основном self нужно писать только в том случае, если название свойства метода совпадает с названием свойства класса
*/



// HomeWork 5


// Task 1

/*
enum Genre {
    
    case rock
    case pop
    case rap
}


protocol Track {
    var name: String { get set }
    var artist: String { get set }
    var trackDuration: Int { get set }
    var country: String { get set }
}

class CategoryPopMusic {
    var listTracks: String = ""
    var countTracks: Int = 0
}

*/

// С чата GBT
/*
enum Genre {
    case rock
    case pop
    case rap
}

class Track {
    var name: String
    var artist: String
    var durationInSeconds: Int
    var originCountry: String
    
    init(name: String, artist: String, durationInSeconds: Int, originCountry: String) {
        self.name = name
        self.artist = artist
        self.durationInSeconds = durationInSeconds
        self.originCountry = originCountry
    }
}

class Category {
    var name: String
    var genre: Genre
    var tracks: [Track]
    lazy var trackCount: Int = tracks.count
    var durationInSeconds: Int {
        var totalDuration = 0
        for track in tracks {
            totalDuration += track.durationInSeconds
        }
        return totalDuration
    }
    
    init(name: String, genre: Genre, tracks: [Track]) {
        self.name = name
        self.genre = genre
        self.tracks = tracks
    }
    
    func addTrack(track: Track) {
        self.tracks.append(track)
    }
    
    func removeTrack(track: Track) {
        if let index = self.tracks.firstIndex(where: {$0 === track}) {
            self.tracks.remove(at: index)
        }
    }
}

// Пример использования
let track1 = Track(name: "Stairway to Heaven", artist: "Led Zeppelin", durationInSeconds: 482, originCountry: "United Kingdom")
let track2 = Track(name: "Thriller", artist: "Michael Jackson", durationInSeconds: 358, originCountry: "United States")
let track3 = Track(name: "Juicy", artist: "The Notorious B.I.G.", durationInSeconds: 315, originCountry: "United States")

var playlist = Category(name: "My Favourites", genre: .rock, tracks: [track1, track2])
playlist.addTrack(track: track3)

print("\(playlist.trackCount) tracks in playlist")
print("Total duration: \(playlist.durationInSeconds) seconds")

*/
 
// Task 1


class TrackMusic {
    var name: String
    var artist: String
    var trackDuractionSec: Int
    var country: String
    
    init (name: String, artist: String, trackDuractionSec: Int, country: String)
    {
        self.name = name
        self.artist = artist
        self.trackDuractionSec = trackDuractionSec
        self.country = country
    }
}

enum GenreMusic {
    
    case pop
    case metal
    case alternative
}


class CategoryPopMusic {
    var name: String = "Pop Music Playlist"
    var genre = GenreMusic.pop
    var listTrack: [TrackMusic]
    lazy var countTracks: Int = listTrack.count
    var trackDuractionSec: Int {
        var totalDuraction = 0
        for track in listTrack {
            totalDuraction += track.trackDuractionSec
        }
        return totalDuraction
    }
    init (listTrack: [TrackMusic]) {
        self.listTrack = listTrack
    }
    
    func addTrack(track: TrackMusic) {
        self.listTrack.append(track)
    }
    
    func removeTrack(track: TrackMusic) {
        if let index = self.listTrack.firstIndex(where: {$0 === track}){
            self.listTrack.remove(at: index)
        }
    }
    
}


class CategoryMetalMusic {
    var name: String = "Metal Music Playlist"
    var genre = GenreMusic.metal
    var listTrack: [TrackMusic]
    lazy var countTracks: Int = listTrack.count
    var trackDuractionSec: Int {
        var totalDuraction = 0
        for track in listTrack {
            totalDuraction += track.trackDuractionSec
        }
        return totalDuraction
    }
    init (listTrack: [TrackMusic]) {
        self.listTrack = listTrack
    }
    
    func addTrack(track: TrackMusic) {
        self.listTrack.append(track)
    }
    
    func removeTrack(track: TrackMusic) {
        if let index = self.listTrack.firstIndex(where: {$0 === track}){
            self.listTrack.remove(at: index)
        }
    }
}

class CategorylAlternativeMusic {
    var name: String = "Alternative Music Playlist"
    var genre = GenreMusic.alternative
   lazy var countTracks: Int = listTrack.count
    var listTrack: [TrackMusic]
    var trackDuractionSec: Int {
        var totalDuraction = 0
        for track in listTrack {
            totalDuraction += track.trackDuractionSec
        }
        return totalDuraction
    }
    init (listTrack: [TrackMusic]) {
        self.listTrack = listTrack
        
    }
    
    func addTrack(track: TrackMusic) {
        self.listTrack.append(track)
    }
    
    func removeTrack(track: TrackMusic) {
        if let index = self.listTrack.firstIndex(where: {$0 === track}){
            self.listTrack.remove(at: index)
        }
    }
    
}



let track01 = TrackMusic(name: "Из окна" , artist: "NoizMC", trackDuractionSec: 312, country: "Russian")

let track02 = TrackMusic(name: "Numb", artist: "LinkinPark", trackDuractionSec: 415, country: "USA")

let track03 = TrackMusic(name: "Du hast", artist: "Rammstein", trackDuractionSec: 268, country: "Deutschland")

let track04 = TrackMusic(name: "Выдыхай" , artist: "NoizMC", trackDuractionSec: 312, country: "Russian")

let track05 = TrackMusic(name: "lost", artist: "LinkinPark", trackDuractionSec: 415, country: "USA")

let track06 = TrackMusic(name: "Ich will", artist: "Rammstein", trackDuractionSec: 268, country: "Deutschland")


var popMusic = CategoryPopMusic(listTrack: [track01])
popMusic.addTrack(track: track04)
popMusic.removeTrack(track: track01)
popMusic.countTracks

var alternativeMusic = CategorylAlternativeMusic(listTrack: [track02])
alternativeMusic.addTrack(track: track05)
alternativeMusic.removeTrack(track: track02)

alternativeMusic.countTracks

var metalMusic = CategoryMetalMusic(listTrack: [track03])
metalMusic.addTrack(track: track06)
metalMusic.removeTrack(track: track03)

metalMusic.countTracks



print("The \(popMusic.name) has \(popMusic.countTracks) tracks and total duraction(sec): \(popMusic.trackDuractionSec)")

print("The \(alternativeMusic.name) has \(alternativeMusic.countTracks) tracks and total duraction(sec): \(alternativeMusic.trackDuractionSec)")

print("The \(metalMusic.name) has \(metalMusic.countTracks) tracks and total duraction(sec): \(metalMusic.trackDuractionSec)")


// task 2



class library {
    var listCategory: String  {
        return popMusic.name + alternativeMusic.name + metalMusic.name
        
    }
    
}

var libraryCategory = library()
print("The library have \(libraryCategory.listCategory)")



// Lesson 6

// Замыкания

/*
Замыкание - автономный блок функциональности, который можно передать и использовать в вашем коде
 
Важно! Замыкания являются ссылочным типом

 */

// { (parameters) -> return type in }

// parametrs - то, что приходит в замыкание ( входящие параметры )

// return type - тип возвращаемомого значения

/*
let block = { (name, age) -> String in
    "Name is\(name). Age is: \(age)"
}
*/


/*
 
Замыкания vs Функция
 
Замыкание еще называют безыменная функция, и правда, они по сути идентичны:
 
1. Могут иметь/ не иметь входящие параметры
2. Могут иметь/ не иметь возвращаемые параметры
3. Для возврата значения используется ключевое слово return

 Функция является частным случаем замыкания
 
 */


// Пример


/*
 Стоит задача написать функцию, которая будет выбирать числа из этого массива при соблюдений каких то условий
 При этом, мы хотим сделать так, чтобы эти условия можно было передавать извне
 Например, вернуть только четные номера или номера, кратные 10
 */
 

    let unsortedNumber: [Int] = [7, 3, 12, 28, 30, 79, 96, 100]
    func Filter(_ numbers: [Int], closure: (Int) -> Bool) -> [Int]
    {
        var result = [Int]()
        for number in numbers {
            if closure(number) {
                result.append(number)
            }
        }
        return result
    }

    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }


    func isModuleoften(numbers: Int) -> Bool {
        return numbers % 10 == 0
    }

Filter(unsortedNumber, closure: isEven)
Filter(unsortedNumber, closure: isModuleoften)


// Наименование входящий параметров можно не писать

// Доступ по скоращенной записи: $0,$1,$2

// let calculateRefuelFlight: (Double, Double) -> Int


// Подробный ваориант
let calcalateRefuelFlight = {
    (distance: Double, weight: Double) -> Int in // тут мы указывает дистанцию и вес
    let fullDistanceWeight = Int (weight * distance)
    return fullDistanceWeight * 120 // 120 - расход топлива взятый из головы
}

// Сокращенный вариант

let  calculateRefuelFlightOmitted: ( Double, Double ) -> Int = { // Здесь мы обьявили о двух безымянных значений
    let fullDistanceWeight = Int($0 * $1) // Здесь здесь мы аперирует значениями через $0 и $1
    return fullDistanceWeight * 120
}


// Слово return можно не писать если
// есть возвращаемый параметр
// Замыкание в одну строчку ( как у функции )

let newcalculate: (Double, Double) -> Int = { Int ($0 + $1) * 120}


// для большего удобства мы можем вынести замыкание за вызывающие скобки()
// Этот синтаксис называется Trailing closure и применяется, когда замыкание являеся последним параметром функции

// Filter(unsortedNumber) { $0 % 2 == 0 }


// Самый частый кейс использования - completiton вызов (callback) для асинхроного общения обьектов

func fetchUsersFromServer (completion: @escaping ([String]) -> Void ) {
    let result = [String] ()
    completion(result)
}

// Здесь происходит инициализация какого то значения и фильтрация его по убыванию
// [Int]().filter[ > ]


// Замыкание как тип

// Глобальные замыкания ( коллбэки ) мы храним в свойствах

let displaySunProperty: () -> Void

// замыкание не определенно, только обьявлено - за такими замыканиями надо следить,
// при случайном вызове не определенного ранее замыкания - программа упадет

// let savePropety: (Data) -> Void = { data in ... }

// мы определяем замыкание, обьявляя тип передаваемого параметра

// let randomColorProperty: () -> UIColor = { return UIColor.green}
// let calculateRefuelFlightProperty: (Double, Double) -> Int = { first, second in ... return ... }

// Дополнительно

/*
 
Захват ссылок. Опасность retail cycle
Важно помнить, что замыкания могут захватить ссылки на обьекты снаружи. На обьект вызова и его свойства -self, и прееменные внутри области видимости в функции

@escaping - замыкание, переданное как параметр в функцию и вызываемое после выполнения функции( читай: убегающий из функции )

@autoclosure - замыкние, автоматически создаваемое для оборачивания выражения, которое передается как параметр в функцию
  
 */


// создадим самое простое замыкание

let helloworld = {
    print ("Hello world")
}


// теперь мы можем вызвать helloWorld

helloworld()

// теперь мы можем константе присвоить замыкание


let test06 = helloworld
test06()

// мы можем запринтить

print (type(of: helloworld)) // где получаем входной парметр void и выходной парметр void

// второй пример

func filter ( array: [Int], filteringRule: (Int) -> Bool ) -> [Int] // выходное значение какой то массив из int, и применятеся правилос filteringRule
{
    var res = [Int]()
    array.forEach{ num in
        if filteringRule(num) == true {
            res.append(num)
        }
    }
    return res
}


let array = [10, 1, 2 ,123, 12]
let filtered = filter(array: array, filteringRule: { (number: Int) -> Bool in
    return number > 20
})

// теперь мы можем упростить запись

let filtered01 = filter(array: array, filteringRule: {number in number > 20})

// или мы можем еще сильней упростить

let filtered02 = filter(array: array, filteringRule: {$0 > 20})

// если замыкание идет последним в списке параметро, то

let filtered03 = filter(array: array) { $0 > 20 }

print(filtered)
print(filtered01)
print(filtered02)
print(filtered03)


class NetworkService {
    
    var names: [String] = []
    
    private lazy var callBack = {[ weak self] ( name: String) -> Void in
    self?.names.append(name)
}
func getName() {
    
callBack("Egor")
    
}
}


// Задача
// Вам лень клеить обои, вы хотите отдать работу рабочему и уйти в бар



// Решение: определить у рабочего функцию "клеить обои" с передачей замыкания completion, обяз узнать через completiton о завершении работы

// Со стороны работника
struct Worker {
    func stick (wallpaper: String, // Материал
                sheetCount: Int,   // Кол-во
                pattern: Bool, // Рисунок
                completion: (Bool) -> Void) { // готовность
        // Здесь находится код выполнения работы....
        var workIsReady = false
        // в случае успешного выполнения работы
        workIsReady = true
        if workIsReady {
            completion(true)
        }
        else {
      //      completion(false)
        }
        
    }
}

// Со стороны заказчика

struct Spouse {
    func hireWorker(worker: Worker) {
        // Заказчик передает необходимые аргументы для работы,
        // Метод "клеить" - работа обьекта типа Worker
        // по результату работы, в зависимости от того, какой аргумент будет передан рабочим в замыкание, хозяйка принимает решение
        
        worker.stick(wallpaper: "Веселые цветочки", sheetCount: 20, pattern: true) {finished in
            // название параметра не играет роли, в замыкании нет обязательных ярлыков, как в функции
            if finished {
                print("Я доволен вот тебе бабло") }
            else { print("Наклеели криво или нужно больше времени?")
            }
        }
    }
}

let spouse = Spouse()
let worker = Worker()
spouse.hireWorker(worker: worker)

// HW 6

// task 1

// ChatGPT
/*
typealias FuelCalculation = (Double, Double) -> Double

func calculateFuelConsumption(using fuelCalculation: FuelCalculation) {
    let weight = 5000.0 // вес спутника в кг
    let distance = 800000000.0 // длина полёта в км
    
    let fuelConsumption = fuelCalculation(weight, distance)
    
    print("Расход топлива: \(fuelConsumption) кг")
}

let firstFuelCalculation: FuelCalculation = { weight, distance in
    return (weight / 2) * (distance / 1000000)
}

let secondFuelCalculation: FuelCalculation = { weight, distance in
    return (weight * 3) - (distance / 1000000)
}

calculateFuelConsumption(using: firstFuelCalculation)
calculateFuelConsumption(using: secondFuelCalculation)

/*
В итоге мы вызываем функцию `calculateFuelConsumption()` с передачей замыкания расчета расхода топлива в качестве аргумента. Затем для двух замыканий рассчитывается расход топлива по-разному. В конце мы вызываем функцию `calculateFuelConsumption()` дважды, передавая два разных замыкания в качестве аргумента.
*/
*/
// Второй вар

// Определяем функцию для вызова замыканий
/*
func calculateFuelConsumption(calculate: (Double, Double) -> Double, weight: Double, distance: Double) {
    let fuelConsumption = calculate(weight, distance)
    print("Fuel consumption: \(fuelConsumption)")
}

// Определяем первое замыкание для расчета расхода топлива
let calculateFuel1 = { (weight: Double, distance: Double) -> Double in
    return weight * distance / 1000
}

// Определяем второе замыкание для расчета расхода топлива
let calculateFuel2 = { (weight: Double, distance: Double) -> Double in
    return weight * distance / 2000
}

// Вызываем функцию для первого замыкания
calculateFuelConsumption(calculate: calculateFuel1, weight: 1000, distance: 500000)

// Вызываем функцию для второго замыкания
calculateFuelConsumption(calculate: calculateFuel2, weight: 1000, distance: 500000)
*/

//Task1

func calculateFuel(calculate: (Double, Double) -> Double, weight: Double, distance: Double) {
    let fuelConsumption = calculate(weight, distance)
    print("Fuel necessary: \(fuelConsumption)")
}


let calculateFuel0 = { (weight: Double, distance: Double) -> Double in
    return weight * distance / 1000
}


let calculateFuel1 = { (weight: Double, distance: Double) -> Double in
     return weight * distance / 2000
}


calculateFuel(calculate: calculateFuel0, weight: 1000, distance: 500000)


calculateFuel(calculate: calculateFuel1, weight: 1000, distance: 500000)


// Task 2

let calculateFuel2: (Double, Double) -> Double = { Double ($0 * $1) / 3000 }


calculateFuel(calculate: calculateFuel2, weight: 1000, distance: 500000)

// Базовый класс


/*
 Любой класс, который ничего не наследует из другого класса - называется базовым
 
 Классы в Swift ничего не наследуют от универсального базового класса
 
 Классы у корторых не указан суперкласс ( род, класс) называютсся базовыми, котороые вы можете использовать для строительства других классов
 */

class BaseClass {
    func baseMethod() {
        print("Заливаем бетон")
    }
}

// Неверно

class ChildClassTwo: BaseClass {
    override func baseMethod() {
        print("Штукатурим и красим стены") // Отсутсвует вызов родительского метода - это полная подмена функционала с нарушением LSP
        // Моими словами: нельзя переопределять метода от родителя
    }
}

// Верно

class ChildClassThree: BaseClass {
    override func baseMethod() {
        super.baseMethod()
        
        print("И добавляем арматуру")
    }
}

/*
 
 Доступ к переопределенным эелментам суперкласса

Доступ к переопределенным элементам осуществляется по след правилам:
 1. Переопределенный метод с именем someMethod() может вызвать одноименный метод суперкласса, используя конструкцию super.someMethod() внутри своей реализации ( в коде переопределенного  метода )
 2. Переопредленное свойство someProperty можетм получить доступ к свойству суперкласса с таким же именем, используя конструкцию super.someProperty внутри реализации своего геттера или сеттера
 */

// это означает что в дочернем классе я могу обращаться к род свойству класса

class Counter {
    var countStart: Int {
        return 0
    }
}

class OneCounter: Counter {
    override var countStart: Int {
        return super.countStart + 1
    }
}


// Переопределение инициализаторов

/*
 
Инициализаторы являются такими же наследумыми элементами, как и методы.
Если в подклассе набор свойств, требуюущих установки значений, не отличается, то наследуемый инициализатор может быть использован для создания экземпляра подкласса.
 
Вы можеет создать собственую реализацию наследуемого инициализатора.
 
Если вы определяете инициализатор с уникальными по отношению к классу-родителю набором входных параметров, то вы не переопределяете инициализатор, а обьявляете новый.
 
*/


class ShortNamed {
    let firstName: String
    let familyName: String
    
    init (firstName: String, familyName: String ) {
        self.firstName = firstName
        self.familyName = familyName
    }
}

class FullNamed: ShortNamed {
    let middlename: String
    
    init(firstName: String, familyName: String, middlename: String) {
        self.middlename = middlename
        super.init(firstName: firstName, familyName: familyName)
    }
}

// если подкласс имеет хотя бы один собственный иницализатор, то инициализаторы родительского класса не наследуются, их нельзя  использовать по умолчанию

// Для вызова инициализатора субкласса необходимо использовать конструкцию super.init()

// переопределение род класса

class ShortNamed01 {
    let firstName: String
    let familyName: String
    
    init (firstName: String, familyName: String ) {
        self.firstName = firstName
        self.familyName = familyName
    }
}

class FullNamed01: ShortNamed01 {
    let fullName: String
    
    override init(firstName: String, familyName: String) {
        self.fullName = firstName + familyName
        super.init(firstName: firstName, familyName: familyName)
    }
}

/*
 Наследуемые свойства иногда ограничивают функциональные возможности субкласса, в таком случае можно переписать геттер
 или сетер и при возможности добавить наблюдатель
 
 С помощью механимзма переопределения можно расширить наследуемое "только для чтения" свойство до "чтение-запись",
 реализовав в нем и геттер и сеттер ! НО обратное невозможно: если у наследумого свойства реализован и гетер и сеттер,
 нельзя сделать из него свойтсво "только для чтения"
 */

/*
 Переопределение наследуемых свойств
 
ВНИМАНИЕ - Хранимые свойства переопределить нельзя, так как вызываемый или наследумый инициазатор родительского класса,
 попытается устновить их значения, но не найдет их
 
 Сабкласс не знает деталей реализации наследуемого свойтсва в суперклассе, он знает лишь имя и тип наследуемого свойства
 Поэтому всегда необходимо указывать имя и тип переопределяемого свойства
 */


/*
Модификатор final
 
Swift позволяет защищать реализацию класса целиком или его отдельных элементов.Для этого необходимо использовать
 перевентивный модификатор final, который указывается перед обьявлением класса или его отдельных элементов:
 final class для классов
 final var для свойств
 final func для метордов
 
При защите реализации класса его наследование в другие классы становится невозможным, для элементов класса их наследование
 происходит, но нереопредление становится недоступным
 
 */

// HomeWork 7
/*
 
 Задача 1

 Вы продолжаете разрабатывать библиотеку аудио треков. Сейчас будем работать над исполнителями треков.

 Алгоритм выполнения

 Создайте суперкласс артист;
 Определите в нем общие для артиста свойства (имя, страна, жанр);
 Определите общие методы (написать трек и исполнить трек);
 В реализацию метода “написать трек” добавьте вывод в консоль “Я (имя артиста) написал трек (название трека)”;
 В реализацию метода “исполнить трек” добавьте вывод в консоль “Я (имя артиста) исполнил трек (название трека)”;
 Создайте 3 сабкласса любых артистов и переопределите в них МЕТОДЫ суперкласса класса.
 Задача 2

 Создание списка артистов.

 Алгоритм выполнения
 Доработайте существующих артистов так, чтобы они имели уникальные для каждого из них свойства и методы.
 Защитите этих артистов от редактирования в будущем.

 
 */
enum Tracks:String {
    
    case fromWindows = "Из окна"
    case vPitetePit = "В Питере пить"
    case numb = "Numb"
}
 
class Artist {
    var name: String
    var country: String
    var genre: String
    var track: Tracks
    
    init (name: String, country: String, genre: String, track: Tracks)
    {
        self.name = name
        self.country = country
        self.genre = genre
        self.track = track
    }
    func writeSong() {
        print("I \(name) wrote a track")
    }
    
    func singSong() {
        print("I \(name) sang a track")
    }
}


final class NoizMC: Artist {
    var age: Int
    init (name: String, country: String, genre: String, track: Tracks, age: Int ) {
        self.age = age
        super.init(name: name, country: country, genre: genre, track: track)
    }

    override func writeSong() {
        //super.writeSong()
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong() {
        print("I \(name) sang a track \(track.rawValue)")
    }
    
    func howOld() {
        print("\(name) has \(age) old")
    }
}

final class Leningrad: Artist {
    var isDrunk: Bool
    init (name: String, country: String, genre: String, track: Tracks, isDrunk: Bool) {
        self.isDrunk = isDrunk
        super.init(name: name, country: country, genre: genre, track: track)
    }
    
    override func writeSong() {
        // super.writeSong()
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong() {
        print("I \(name) sang a track \(track.rawValue)")
    }
    func checkDrunk() {
        if isDrunk {
            print("Shnurov is drunk")}
            else
            {
                print("Why Shnurov is sober? ")
            }
        }
    }


final class LinkinPark: Artist {
    var members: Int
    init (name: String, country: String, genre: String, track: Tracks, members: Int) {
        self.members = members
        super.init(name: name, country: country, genre: genre, track: track)
    }
    
    override func writeSong() {
        // super.writeSong()
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong()  {
        print("I \(name) sang a track \(track.rawValue)")
    }
    func haveMembers() {
        print("\(name) have \(members) members")
    }
}

let noicMC = NoizMC(name: "NoizMC", country: "Russia", genre: "Pop", track: Tracks.fromWindows, age: 32)

noicMC.writeSong()

let leningrad = Leningrad(name: "Leningrad", country: "Russia", genre: "Pop", track: Tracks.vPitetePit, isDrunk: false)

leningrad.writeSong()

let linkinpark = LinkinPark(name: "Linkin park", country: "Russia", genre: "Alternative", track: Tracks.numb, members: 7)

linkinpark.writeSong()

noicMC.singSong()
leningrad.singSong()
linkinpark.singSong()

noicMC.howOld()
leningrad.checkDrunk()
linkinpark.haveMembers()


// Протоколы и расширенияё
/*
 Синтаксис, Использование
 SomeStructure реализует/принимает протоколы FirstProtocol и AnotherProtocol 
 */

//struct SomeStructure: FirstProtocol, AnotherProtocol {}
// Если у класса есть суперкласс, то вписывайте имя суперкласса до списка протоколов, которые он принимает, также разделите имя суперкласса и имя протокола запятой

// class SomeClass: SomeSuperClass, FirstProtocol, AnotherProtocol {}


// Требование свойств


/*
 Протокол требует у соответсующего ему типа предоставить свойство экземляра или свойство типа, и это свойство должно
 иметь конретное имя и тип. Свойства могут быть обьявлены как изменяемые или неизменяемые
 */

protocol Armed {
    // var weapons: [Weapons] {get set}
}

// перед свойствами типов пишете префикс staric, когда вы оперделяете их в протоколе
// Это правило распоространяется даже тогда, когда требование свойств может иметь префикс static и префикс class, когда мы реализуем их в классах

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set
    
    }
}

// Пример требования свойств

// обьявим протокол с требованием свойства экземпляра
protocol FullyNamed {
    var fullName: String {get}
}

// Создадим класс, который принимает протокол FullyNamed:

class Starship: FullyNamed {
    
    var prefix: String?
    var name: String
    
    init (name: String, prefix: String? = nil)
    {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
    
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")

protocol Togglable {
    mutating func toggle()
}

enum Status: Togglable {
case on
case off
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var status = Status.on //case .on = button
status.toggle() //case .off = button

// ключевое слово mutating необходимо для struct и enum, так как это типы неизменяемых по умолчанию (value types), в отличии от класса

// Требование иницализатора

// в некоторыз  случаях протокол может требовать реализацию инициализатора

protocol Initprotocol {
    init (parameter: Int)
}

class SomeClass: Initprotocol {
    required init (parameter: Int){
        
    }
}

// Для более детального ращзбора требований иницализатора рекомендую обратится к документации


// Протоколы как типы
/*
 Протокол сам по себе не добавляет новой функциональности, но каждый созданный протокол является поноправным типом, поторый можно использовать в коде:
 1. В качестве типа параметра или возвращаемого типа функции, метода или инициализатора
 2. В качестве типа константы, переменной или свойства
 3. Как тип элемента коллекции
 
 Так как протокол является полноценным типом, его название начинается с заглавной буквы
 */

class SomeView {
    var status: Togglable
    var label: String?
    
    init(with status: Togglable) {
        self.status = status
    }
    func configure(with item: FullyNamed) {
        self.label = item.fullName
    }
    func didTap() {
        status.toggle()
    }
    
    }

let view = SomeView(with: status)
view.configure(with: ncc1701)
view.didTap()


// Делегирование
/*
Делегирование - паттерн (шаблон) программирования, суть которого в передачи отвественности от одной сущности другой ( класс или структура )
 
Делегирование используется для ответа на действите или для получения данных из другой сущности без необходимости знания ее типа
 
Конвенция IOS гласит, что мы именуем протоколы делегатов явным образом, добавляя Delegate к названию протокола
 */


// Пример

protocol ViewDelegate: AnyObject {
    func didCallSomeMethod(on view: View, work: String)
}

class View {
    weak var delegate: ViewDelegate?
    // у View закрепляем переменную делегата - чтобы не возникло кольцевой ссылки (retain cycle), 'weak var'
    private let frame: CGRect
    init(frame: CGRect = .zero) {
        self.frame = frame
    }
    func someMethod() {
        let work = "Работа сделана"
        delegate?.didCallSomeMethod(on: self, work: work)
    // в методе View, который относится к делегату, вызываем метод делегата
    }
}

class SomeViewDelegate: ViewDelegate {
    func didCallSomeMethod(on view: View, work: String) {
        print("Delegate can handle the work from \(view): \(work)")
    }
}

let someView = View()
let vievDelegate = SomeViewDelegate()
someView.delegate = vievDelegate
someView.someMethod()

// Обратите внимание, что отдельного вызова у SomeViewDelegate нам не требуется, он уже вызван у View и ему переданы данные для работы

protocol SomeProtocol {
    func someFunction()
}
let items: [SomeProtocol] = []
items.forEach {$0.someFunction()}

// Протокол может наследовать другие протоколы, а также существует возможность добавлять требования поверх прочих
protocol SomeProtocol01: AnotherProtocol, Codable {
    // можно добавить новые требования + к AnotherProtocol. Codable
}

// Class protocol
// Class protocol или протокол с ограниченим: его реализовывать могут только классы

protocol SomeClassOnlyProtocol: AnyObject {
    // требование к классу, реализующему протокол
}

//struct UserInfo: SomeClassOnlyProtocol {} // ошибка компиляции

// Any - может представить экземпляр любого типа
// AnyObject - может представить экземпляр любого класса

protocol SomeProtocol02: Any {}
struct UserInfo01: SomeProtocol02 {}

// Композиция протоколов
/*
 Для того чтобы потребовать от типа соответствие нескольким протоколам, можно воспользоваться композицией протоколов,
 Композиция обозначается разделителем &
 */
/*
protocol RadarObserver: AnyObject {
    func detected(object: SpaceObject)
}
protocol Togglable {
    mutating func toogle()
}

class Radar: SpaceObject, Togglable {
    // реализации класса Radar
}

func tell(observer: RadarObserver & Togglable, starship: SpaceObject) {
    observer.toggle()
    observer.detected(object: starship)
}

*/

// Проверка соответсвия протоколу
/*
 Приведенние к протоколу проходит так же, как и приведении к типу:
 1. Оператор is вовзращает значение true, если экземпляр соответствует протоколу и если нет, то false
 2. Опциональгая версия оператора, понижающего поведение as?,
 возвращает опциональное значение протокола.И это значение равно nil, если оно не соответствует протоколу
 3. Принудительная версия оператора, понижающего приведения as!, осуществляет принудительное понижающее приведение
 (force downcast). Если оно не завершается успешно, то васкакивает runtime ошибка
 */
// Расширение протколов.POP.Protocol-oriented programming
 
// Protocol extension - мощный инструмент в swift, позволяющий внедрять реализацию методов протокола по умолчанию.
// Любой тип, реализующий проткол, автоматически получает реализацию метода бех дополнительный изменен

/*
extension Weapons03 {
    mutating func fire() {
        guard ammunition > 0 else {
            print("\(name) Нет патронов!")
            return
        }
        ammunition -=1
    }
}

*/

// Расширением протоколов можно добиться реализации по умолчанию, но реализуемый тип может представить свою собственную реализацию.

protocol Flying {
    func fly()
}

extension Flying {
    func fly() {
        // тут рабочий код
        print("I'm flying")
    }
}

struct Bird: Flying {}
struct Airplane: Flying {}
struct Human03: Flying {
    func fly() {
        print("Give me the parachute please!!!")
    }
}

// Примеры

protocol AuthServiceProtocol {
    var username: String {get set}
    var password: String {get set}
    var delegate: UserStatusDelegate? {get set}
    func login()
    func logout()
    func checkUserStatus()
}
protocol TwoFactorAuthServiceProtocol: AuthServiceProtocol {
    var codeToCompare: String {get}
    func requestCode()
}

protocol SettingUserProtocol {
    func change(_ nickname: String)
}

typealias UserSystemProtocol = TwoFactorAuthServiceProtocol & SettingUserProtocol

protocol UserStatusDelegate: AnyObject {
    func userStatusHasBeenChanged(to checkUserStatus: String)
}

extension AuthServiceProtocol {
    
    func login() {
        print("I'm logged in")
    }
    func logout() {
        print("I'm logged out")
    }
    // а еще я могу добавить доп любую функцию
    
    func status() {
        print("My status is good")
    }
    
    
}

class UserSystem: UserSystemProtocol {
    func requestCode() { }
    
    func change(_ nickname: String) { }
    
    var username: String = "Dmitriy"
    
    var password: String = "Petrov"
    
    var codeToCompare: String = "12345"
    
    weak var delegate: UserStatusDelegate?
    
    func requesCode() {}
    
    // но! если я могу переоперделить выводимое значение login
    // до этого i'm loggin, сейчас Hehe
    
    func login() {
        print("Hehe")
    }
    
    //!!! НО если я добавил в extinsion новую функцию которое нету в протоколе и пытаюсь ее изменить тут, оно не изменится
    func status() {
        print("My status is not good")
    }
    
    func checkUserStatus() {
        self.delegate?.userStatusHasBeenChanged(to: "My status signed in")
    }
    
}

class GreetingService: UserStatusDelegate {
    func userStatusHasBeenChanged(to checkUserStatus: String) {
        print(checkUserStatus)
    }
}

var userSystem: UserSystemProtocol = UserSystem()
userSystem.login()
userSystem.status()

 let greetingService: UserStatusDelegate = GreetingService()
userSystem.delegate = greetingService


//Homework 8

import UIKit


enum Model: String {
    case X4 = "X4"
    case GLA = "GLA"
    case Ducato = "Ducato"
    case X1 = "X1"
    case A = "A series"
    case Albea = "Albea"
    case Calina = "Calina"
    case Priora = "Priora"
    case Copper = "Copper"
    case CooperS = "CooperS"
}

enum Brand: String {
    case BMW = "BMW"
    case Mercedes = "Mercedes"
    case Fiat = "Fiat"
    case Lada = "LADA"
    case Mini = "Mini"
}

enum Color {
    case white
    case black
    case blue
}

enum Accessories: String, CaseIterable {
    case tinting = "Тонировка"
    case alarm = "Сигнализация"
    case sportDisks = "Спортивные диски"
    case firstAidKit = "Аптечка"
    case fireExtinguisher = "Огнетушитель"
}

protocol Car {
    var model: Model { get }
    var color: Color { get }
    var buildDate: Int { get }
    var price: Double { get set }
    var accessories : [Accessories] { get set }
    var isServiced: Bool { get set }
    var specialOffer: Bool  { get set }
}

protocol DealershipProtocol {
    var name: Brand { get }
    var showroomCapacity: Int { get }
    var stockCars: [Car] { get set }
    var showroomCars: [Car] { get set }
    var cars: [Car] { get set }
    
    func offerAccesories (accessories: [Accessories])
    func presaleService (car: inout Cars)
    func addToShowroom (car: inout Cars)
    func sellCar (car: inout Cars)
    func orderCar ()
}

protocol SpecialOffer {
    func addEmergencyPack()
    func makeSpecialOffer()
}
struct Cars: Car {
    var model: Model
    var color: Color
    var buildDate: Int
    var price: Double
    var accessories: [Accessories]
    var isServiced: Bool
    var specialOffer = false
}

class Dealership : DealershipProtocol {
    var name: Brand
    var showroomCapacity: Int
    var stockCars: [Car]
    var showroomCars: [Car]
    var cars: [Car] {
        get {
            return stockCars + showroomCars
        }
        set {
            let sc = newValue.dropLast(showroomCars.count)
            let shc = newValue.dropFirst(sc.count)
            stockCars = Array(sc)
            showroomCars = Array(shc)
        }
    }
    
    init (name: Brand, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car]) {
        self.name = name
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
    }
    
    func offerAccesories(accessories: [Accessories]) {
        let newAccessories: [String] = Accessories.allCases.map { $0.rawValue }
        print("Купите: \(newAccessories.joined(separator:", "))")
    }
    func orderCar() {
        if var newAuto = factory.randomElement() {
            newAuto.buildDate = (Calendar.current.component(.year, from: Date()))
            newAuto.isServiced = false
            newAuto.specialOffer = false
            stockCars.append(newAuto)
            print("На парковку добавен: \(newAuto.model.rawValue). ")
        }
    }
    func presaleService(car: inout Cars) {
        if car.isServiced {
            print("Предпродажная подготовка автобиля \(car.model.rawValue) уже была выполнена ранее")
        } else {
            car.isServiced = false
            print("Автомобиль \(car.model.rawValue) отправлен на предпродажную подготовку")
        }
    }
    func addToShowroom(car: inout Cars) {
        presaleService(car: &car)
        showroomCars.append(car)
        for (i,j) in stockCars.enumerated() {
            if j.model == car.model {
                stockCars.remove(at: i)
            }
        }
        print("Автомобиль \(car.model.rawValue) перемещен со склада в салон")
    }
    func sellCar (car: inout Cars) {
        var missedAccessories = [String]()
        var carAccessoriesArray = [String]()
        presaleService(car: &car)
        let  allAccessories = Accessories.allCases.map { $0.rawValue }
        let  carAccessories = car.accessories[0].rawValue
        for i in car.accessories {
            carAccessoriesArray.append(i.rawValue)
        }
        for i in allAccessories {
            if !carAccessoriesArray.contains(i) {
                missedAccessories.append(i)
            }
        }
        print("В автомобиле \(car.model.rawValue) отсутствует доп. оборудование: \(missedAccessories.joined(separator:", "))Приобретите его отдельно")
        print("Автомобиль \(car.model.rawValue) продан.")
        
    }
}

var bmwX1 = Cars(model: Model.X1, color: Color.white, buildDate: 2010, price: 2000 ,accessories: [.alarm], isServiced: true)

var bmwX4 = Cars(model: Model.X4, color: Color.black, buildDate: 2020, price: 1000, accessories: [.sportDisks], isServiced: false)

var mercedesGla = Cars(model: Model.GLA, color: Color.white , buildDate: 2021, price: 1500,accessories: [.tinting], isServiced: false)

var fiatDurato = Cars(model: Model.Ducato, color: Color.blue, buildDate: 1968, price: 500,accessories: [.alarm], isServiced: true)

var mercedesA = Cars(model: Model.A, color: Color.black, buildDate: 2023, price: 1200, accessories: [.sportDisks] , isServiced: true)

var fiatAlbea = Cars(model: Model.Albea, color: Color.blue, buildDate: 2002, price: 750, accessories: [.alarm], isServiced: false)

var ladaCalina = Cars(model: Model.Calina, color: Color.white, buildDate: 2023, price: 100, accessories: [.tinting], isServiced: true)

var ladaPriora = Cars(model: Model.Priora, color: Color.black, buildDate: 2006, price: 150, accessories: [.sportDisks], isServiced: false)

var miniCopper = Cars(model: Model.Copper, color: Color.black, buildDate: 2021, price: 1666, accessories: [.alarm], isServiced: false)

var miniCoperS = Cars(model: Model.CooperS, color: Color.blue, buildDate: 2023, price: 1999, accessories: [.tinting], isServiced: true)


var factory: [Cars] = [mercedesA, miniCoperS]

var dealerBmw = Dealership(name: Brand.BMW, showroomCapacity: 24, stockCars:[bmwX1] , showroomCars: [bmwX4])
var dealerMercedes = Dealership(name: Brand.Mercedes, showroomCapacity: 14, stockCars: [mercedesGla], showroomCars: [mercedesA])
var dealerFiat = Dealership(name: Brand.Fiat, showroomCapacity: 4, stockCars: [fiatDurato], showroomCars: [fiatAlbea])
var dealerLada = Dealership(name: Brand.Lada, showroomCapacity: 12, stockCars: [ladaCalina], showroomCars: [ladaPriora])
var dealerMini = Dealership(name: Brand.Mini, showroomCapacity: 14, stockCars: [miniCopper], showroomCars: [miniCoperS])


var DealershipArray = [dealerBmw, dealerMercedes, dealerFiat, dealerLada, dealerMini]

for i in DealershipArray {
    switch i.name {
    case .BMW : print("\(i.name): С удовольсвием за рулем")
    case .Mercedes : print("\(i.name): Самое лучшее или ничего")
    case .Mini : print("\(i.name): Let's Motor!")
    case .Fiat : print("\(i.name): Новая порода хищников")
    case .Lada : print("\(i.name): Не ссы - доедим")
    }
}


dealerFiat.presaleService(car: &fiatDurato)
dealerLada.addToShowroom(car: &ladaCalina)
dealerLada.offerAccesories(accessories: [.firstAidKit])
dealerMini.sellCar(car: &miniCopper)
dealerMini.orderCar()


extension Dealership: SpecialOffer {
    func addEmergencyPack() {
        for (i,j) in cars.enumerated() {
            if !j.accessories.contains(.fireExtinguisher) {
                cars[i].accessories.append(.fireExtinguisher)
                print("Автомобилю \(cars[i].model.rawValue) добавлен доп. аксессуар - огнетушитель.")
            }
            if !cars[i].accessories.contains(.firstAidKit) {
                cars[i].accessories.append(.firstAidKit)
                print("Автомобилю \(cars[i].model.rawValue) добавлен доп. аксессуар - аптечка.")
            }
        }
    }
    func makeSpecialOffer() {
        for (i,j) in stockCars.enumerated() {
            var oldPrice: Double
            if  stockCars[i].buildDate < Calendar.current.component(.year, from: Date()) {
                if !j.specialOffer {
                    oldPrice = stockCars[i].price
                    stockCars[i].price *= 0.85
                    if !stockCars[i].accessories.contains(.fireExtinguisher) {
                        stockCars[i].accessories.append(.fireExtinguisher)
                        print("Автомобилю \(stockCars[i].model.rawValue) добавлен огнетушитель.")
                    }
                    if !stockCars[i].accessories.contains(.firstAidKit) {
                        stockCars[i].accessories.append(.firstAidKit)
                        print("Автомобилю \(cars[i].model.rawValue) добавлена аптечка")
                    }
                    stockCars[i].specialOffer = true
                    print("Стоимость автомобиля \(cars[i].model.rawValue) уменьшена на 15% и теперь составляет \(Int(stockCars[i].price)) $. вместо \(Int(oldPrice)) $")
                    showroomCars.append(stockCars[i])
                    stockCars.remove(at: i)
                    print("Автомобиль \(showroomCars[i].model.rawValue) перемещен со склада в салон")
                }
            }
        }
        for (i,j) in showroomCars.enumerated() {
            if  showroomCars[i].buildDate < Calendar.current.component(.year, from: Date()) {
                if !j.specialOffer {
                    showroomCars[i].price *= 0.85
                    if !showroomCars[i].accessories.contains(.fireExtinguisher) {
                        showroomCars[i].accessories.append(.fireExtinguisher)
                        print("Автомобилю \(stockCars[i].model.rawValue) добавлен огнетушитель")
                    }
                    if !showroomCars[i].accessories.contains(.firstAidKit) {
                        showroomCars[i].accessories.append(.firstAidKit)
                        print("Автомобилю \(showroomCars[i].model.rawValue) добавлена аптечка")
                    }
                    showroomCars[i].specialOffer = true
                    print("Стоимость автомобиля \(cars[i].model.rawValue) уменьшена на 15% и теперь составляет \(Int(showroomCars[i].price)) $")
                }
            }
        }
    }
}


dealerBmw.addEmergencyPack()
dealerMercedes.makeSpecialOffer()


// Lesson 9

// Как создавать свои ошибки

// Для отображения ошибки применяются типы, которые соответвуют протколу Error
// Если перечисление реализует данный протокол, то это говорит о том,что оно может быть использовано для обработки ошибок:

enum ServerError: Error {
    case badRequest
    case badResponce
    case notFound
}

// Для генерации ошибок используется ключевое слово throw:
// throw ServerError.notFound

//Обработка ошибок
// За обработку ошибки ответсвеннен фрагмент кода, который ее "окружает". Существует несколько способов обработки ошибки:
/*
1. Передать(propagate) ошибку из функции в код, который вызывает саму функцию
2. Обработать ошибку, используя инструкцию do-catch
3. Обработать ошибку, как значение опционала
4. Поставить утверждение,что ошибку в данном случае исключена
 */


// если функция может завершить выполнение с ошибкой, рекомендуется обозначить ее ключевым словом throws.
// Вызывающий функцию код должен будет эту ошибку обработаь, иначе вы получите ошибку компиляции
/*
protocol Weapons {
    var name: String { get }
    var damage: Int { get }
    var ammunition: Int { get set }
    mutating func fire() throw
}

func fire(to coordinate: Point) throw {
    guard
        canShoot,
        var weapon = weapon.first(where: {$0.ammunition > 0})
    else {
        return
    }
    
    try weapon.fire()
    shootHandler?.fire(from: weapon. to: coordinate)
}
 */
// Обработка ошибки do-catch

// Для обработки ошибок при вызове генерирующей ошибку функции используется инструкция do-catch:
/*
 do {
 try выражение
 выражение
 } catch шаблон 1 {
 выражение
 } catch шаблон 2 where условие {
 выражение
 }
 */
/*
func detected(object: SpaceObject) {
    do {
        try fire(to: object.coordinate)
    } catch WeaponsError.isEmpty {
        print("Нет патронов!")
    } catch {
        print("Ошибка неизвестна")
    }
}

func someThrowingFunction() throw -> Int { }
let x = try? someThrowingFunction()
let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}
 */
// Запрет на передачу ошибки
/*
 Иногда вы полностью уверены, в том что вк конкретном случае ошибка точно не будет сгенерирована
 
 Функция loadImage (atPAth:) генерируетошибку при загрузке изображения по заданому пути, но в примеере указан путь из ресурсов приложения, следовательно ресурс будет загружен ( но это неточно )
 */

// let photo = try! loadImage(atpath: "./Resources/John Appleseed.jpg")


// Примеры


enum ServerError01: Error {
    case badRequest
    case notFound
    case unathorized
    case tokenFired
    case noRights
}

enum NetworkError: Error {
    case noconnection
}



class NetworkService01 {
    func search(for resource: String) throws -> String {
        guard resource.isEmpty == false else {
            throw ServerError01.tokenFired
        }
        
        return "Hello result for: \(resource)"
    }
}


let networkService01 = NetworkService01()
do {
    let result = try networkService01.search(for: "")
} catch ServerError01.tokenFired {
     print("Please check a Rights")
} catch {
    if (error as? ServerError01) == .badRequest {
        print("Wrong request")
    }
}

let resourceResult = try? networkService01.search(for: "result") // Принудительно без try, когда не хотим пилить ошибки
// let guaranteedResourceResult = try! networkService01.search(for: "result") Будет ошибка try! это force unwrapped


//-----


class NetworkService02 {
    // точка для примера что у нас есть/нет сети
    var canMakeRequest = true
    func login(password: String) throws -> Int {
        guard password.isEmpty == false else {
            throw ServerError01.badRequest
        }
        guard password == "12345" else {
            throw ServerError01.unathorized
        }
        guard canMakeRequest else {
            throw NetworkError.noconnection
        }
        return  100500
    }
    
}

var networkService02 = NetworkService02()

    do {
        let userId = try networkService02.login(password: "12345")
    } catch NetworkError.noconnection {
        print("Sorry, no connection")
    } catch ServerError01.badRequest {
        print("Your password is Empty")
    } catch ServerError01.unathorized {
        print("This is not right password")
    }
let userid = try? networkService02.login(password: "123456")

// ----------------------------
// Kursovaya

//task 1
/*
Создайте следующие протоколы и определите в них свойства и методы.
1.1. Ресторан
Свойства: название, сотрудники, склад с продуктами, меню.
1.2. Сотрудник
Свойства: имя, пол, возраст, должность (менеджер, повар, официант и т.д.).
1.3. Блюдо
Свойства: тип блюда (салат, горячее, гарнир, десерт), ингредиенты (картофель, лук, мясо, соль), время приготовления, цена.
1.4. Заказ
Свойства: время получения заказа, время отдачи заказа, блюда в заказе, готовность.
*/

enum Products: String {
    case oil = "Масло"
    case vegetables = "Овощи"
    case fruits = "Фрукты"
    case fish = "Рыба"
    case meat = "Мясо"
    case potato = "Картофель"
    case onion = "Лук"
    case salt = "Соль"
    case peper = "Перец"
    case bread = "Хлеб"
    case pasta = "Паста"
    case eggs = "Яйца"
    case sauces = "Соусы"
    case chicken = "Курица"
    case dough = "Тесто"
    
}

enum Menu: String {
    case eat = "Еда"
    case drink = "Напитки"
    case sweets = "Сладости"
}

enum Gender: String {
    case male = "Мужской"
    case female = "Женский"
}

enum Position {
    case cook(type: Cooks)
    case manager
    case waiter
    func getName() -> String {
        switch self {
        case .cook(type: let type):
            return "\(type.rawValue)"
        case .manager:
            return "Менеджер"
        case .waiter:
            return "Официант"
        }
    }
}

enum Cooks: String {
    case coldKitchen = "Повар холодного цеха"
    case hotKitchen = "Повар горячего цеха"
    case chef = "Шэф повар"
}

enum TypeDish: String {
    case salat = "Салат"
    case hot = "Горячее"
    case garnish = "Гарнир"
    case dessert = "Десерт"
}


protocol Restaurant {
    var name: String {get set}
    var staff: Int {get set}
    var storageProduct: [String:Int] {get set}
    var menu: [Menu] {get set}
}

protocol Employee {
    var name: String {get set}
    var gender: Gender {get set}
    var old: Int {get set}
    var positions: Position {get set}
}

protocol Dish {
    var type: TypeDish {get set}
    var ingredients: [Products] {get set}
    var timeCook: Int {get set}
    var cost: Int {get set}
}

protocol Order {
    var timeToTake:Int {get set}
    var timeToGive:Int {get set}
    var dish: Dish {get set}
    var ready: Bool {get set}
}

//task 2
/*
Создайте следующие классы и структуры.
2.1. Должности (менеджер, повар, официант и т.д.) подписать под протокол Сотрудник. Свойства и методы зависят от должности. Для поваров продумать несколько должностей. Каждый должен иметь метод “готовить”, но иметь еще свои методы. Например, повар холодного цеха делает салаты; повар горячего цеха умеет варить и жарить, шеф-повар умеет все (можно сделать привязку к типу блюда).
2.2. Конкретные блюда подписать под протокол Блюда. Ингредиенты зависят от типа блюда. Например, для яичницы нужны: яйца, масло, соль. Создать минимум 5 блюд.
2.3. Заказ подпишите под протокол Заказы.
*/

class Manager: Employee {
    var name: String
    var gender: Gender
    var old: Int
    var positions: Position
    init (name: String, gender: Gender, old: Int, positions: Position) {
        self.name = name
        self.gender = gender
        self.old = old
        self.positions = positions
    }
    func decideProblems(){}
}

class Waiter: Employee {
    var name: String
    var gender: Gender
    var old: Int
    var positions: Position
    init (name: String, gender: Gender, old: Int, positions: Position) {
        self.name = name
        self.gender = gender
        self.old = old
        self.positions = positions
    }
    func takeOrder(){}
    func giveOrder(){}
}


class CookColdKitchen: Employee {
    var name: String
    var gender: Gender
    var old: Int
    var positions: Position
    init (name: String, gender: Gender, old: Int, positions: Position) {
        self.name = name
        self.gender = gender
        self.old = old
        self.positions = positions
    }
    func cutVegetables(){}
    func cutFruits(){}
}

var CookerColdKitchen = CookColdKitchen(name: "Vasya", gender: Gender.male, old: 30, positions: Position.cook(type: Cooks.coldKitchen))

class CookHotKitchen: Employee {
    var name: String
    var gender: Gender
    var old: Int
    var positions: Position
    init (name: String, gender: Gender, old: Int, positions: Position) {
        self.name = name
        self.gender = gender
        self.old = old
        self.positions = positions
    }
    func fry(){}
    func boil(){}
}

var CookerHotKitchen = CookHotKitchen(name: "Ksenia", gender: Gender.female, old: 26, positions: Position.cook(type: Cooks.hotKitchen))

class Chef: Employee {
    var name: String
    var gender: Gender
    var old: Int
    var positions: Position
    init (name: String, gender: Gender, old: Int, positions: Position) {
        self.name = name
        self.gender = gender
        self.old = old
        self.positions = positions
    }
    func cutVegetables(){}
    func cutFruits(){}
    func fry(){}
    func boil(){}
}


var ChefPovar = Chef(name: "Dimon", gender: Gender.male, old: 29, positions: Position.cook(type: Cooks.chef))



class Dishes: Dish {
    var type: TypeDish
    var ingredients: [Products]
    var timeCook: Int
    var cost: Int
    init (type: TypeDish, ingredients: [Products], timeCook: Int, cost: Int) {
        self.type = type
        self.ingredients = ingredients
        self.timeCook = timeCook
        self.cost = cost
    }
}

var MeatFrench = Dishes(type: TypeDish.garnish, ingredients: [.meat, .potato, .vegetables], timeCook: 20, cost: 230)
var Borsh = Dishes(type: TypeDish.hot, ingredients: [.vegetables, .meat, .onion, .salt], timeCook: 15, cost: 300)
var Cesar = Dishes(type: TypeDish.salat, ingredients: [.meat, .vegetables], timeCook: 30, cost: 250)
var Napoleon = Dishes(type: TypeDish.dessert, ingredients: [.oil, .fruits], timeCook: 40, cost: 310)
var Greece = Dishes(type: TypeDish.salat, ingredients: [.vegetables, .oil], timeCook: 15, cost: 250)

/*
 Создайте хранилища:
 продукты (ингредиенты), хранящиеся на складе с указанием количества (продумайте, какой вид коллекции использовать). Создайте минимум 15 продуктов на складе.
 заказы. Содержит в себе заказы.
 */


class Zakaz: Order{
    var timeToTake: Int
    var timeToGive: Int
    var dish: Dish
    var ready: Bool
    init (timeToTake:Int, timeToGive:Int, dish: Dish, ready: Bool ) {
        self.dish = dish
        self.ready = ready
        self.timeToGive = timeToGive
        self.timeToTake = timeToTake
    }
}

var order01 = Zakaz(timeToTake: 10, timeToGive: 20, dish: MeatFrench, ready: true)
var order02 = Zakaz(timeToTake: 5, timeToGive: 15, dish: Borsh, ready: false)
var order03 = Zakaz(timeToTake: 7, timeToGive: 14, dish: Cesar, ready: true)
var order04 = Zakaz(timeToTake: 20, timeToGive: 30, dish: Napoleon, ready: false)
var order05 = Zakaz(timeToTake: 13, timeToGive: 26, dish: Greece, ready: true)


var storageOrders = [order01,order02,order03,order04,order05]

var storageProducts = [
    Products.potato:10,
    Products.onion:5,
    Products.fruits:30,
    Products.meat:10,
    Products.oil:3,
    Products.vegetables:30,
    Products.salt:5,
    Products.chicken:4,
    Products.eggs:10,
    Products.dough:7,
    Products.peper:4,
    Products.sauces:5,
    Products.fish:10,
    Products.pasta:10,
    Products.bread:30
]

class Restik: Restaurant {
    var name: String
    var staff: Int
    var storageProduct: [String: Int]
    var menu: [Menu]
    init (name: String, staff: Int, storageProduct: [String:Int], menu: [Menu]){
        self.name = name
        self.staff = staff
        self.storageProduct = storageProduct
        self.menu = menu
    }
}

// var albatros = Restik(name: "Альбатрос", staff: 7, storageProduct: st, menu: [.drink, .eat, .sweets])

  








