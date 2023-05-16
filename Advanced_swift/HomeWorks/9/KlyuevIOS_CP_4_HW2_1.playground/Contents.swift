import UIKit


enum Model: String {
    case x4 = "X4"
    case gla = "GLA"
    case ducato = "Ducato"
    case x1 = "X1"
    case a = "A series"
    case albea = "Albea"
    case calina = "Calina"
    case priora = "Priora"
    case copper = "Copper"
    case cooperS = "CooperS"
}

enum Brand: String {
    case bmw = "BMW"
    case mercedes = "Mercedes"
    case fiat = "Fiat"
    case lada = "LADA"
    case mini = "Mini"
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

enum ServerError: Error {
    case noCorrectDate
    
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
    var cars: [Car] { get }
    
    func offerAccesories (accessories: [Accessories])
    func presaleService (car: inout Cars)
    func addToShowroom (car: inout Cars)
    func sellCar (car: inout Cars)
    func orderCar ()
}

protocol SpecialOffer {
    func addEmergencyPack()
    func makeSpecialOffer(car: Car) throws
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

var bmwX1 = Cars(model: Model.x1, color: Color.white, buildDate: 2010, price: 2000 ,accessories: [.alarm], isServiced: true)

var bmwX4 = Cars(model: Model.x4, color: Color.black, buildDate: 2020, price: 1000, accessories: [.sportDisks], isServiced: false)

var mercedesGla = Cars(model: Model.gla, color: Color.white , buildDate: 2021, price: 1500,accessories: [.tinting], isServiced: false)

var fiatDurato = Cars(model: Model.ducato, color: Color.blue, buildDate: 1968, price: 500,accessories: [.alarm], isServiced: true)

var mercedesA = Cars(model: Model.a, color: Color.black, buildDate: 2023, price: 1200, accessories: [.sportDisks] , isServiced: true)

var fiatAlbea = Cars(model: Model.albea, color: Color.blue, buildDate: 2002, price: 750, accessories: [.alarm], isServiced: false)

var ladaCalina = Cars(model: Model.calina, color: Color.white, buildDate: 2023, price: 100, accessories: [.tinting], isServiced: true)

var ladaPriora = Cars(model: Model.priora, color: Color.black, buildDate: 2006, price: 150, accessories: [.sportDisks], isServiced: false)

var miniCopper = Cars(model: Model.copper, color: Color.black, buildDate: 2021, price: 1666, accessories: [.alarm], isServiced: false)

var miniCoperS = Cars(model: Model.cooperS, color: Color.blue, buildDate: 2023, price: 1999, accessories: [.tinting], isServiced: true)


var factory: [Cars] = [mercedesA, miniCoperS]

var dealerBmw = Dealership(name: Brand.bmw, showroomCapacity: 24, stockCars:[bmwX1] , showroomCars: [bmwX4])
var dealerMercedes = Dealership(name: Brand.mercedes, showroomCapacity: 14, stockCars: [mercedesGla], showroomCars: [mercedesA])
var dealerFiat = Dealership(name: Brand.fiat, showroomCapacity: 4, stockCars: [fiatDurato], showroomCars: [fiatAlbea])
var dealerLada = Dealership(name: Brand.lada, showroomCapacity: 12, stockCars: [ladaCalina], showroomCars: [ladaPriora])
var dealerMini = Dealership(name: Brand.mini, showroomCapacity: 14, stockCars: [miniCopper], showroomCars: [miniCoperS])


var DealershipArray = [dealerBmw, dealerMercedes, dealerFiat, dealerLada, dealerMini]

for i in DealershipArray {
    switch i.name {
    case .bmw : print("\(i.name): С удовольсвием за рулем")
    case .mercedes : print("\(i.name): Самое лучшее или ничего")
    case .mini : print("\(i.name): Let's Motor!")
    case .fiat : print("\(i.name): Новая порода хищников")
    case .lada : print("\(i.name): Не ссы - доедим")
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
            if !j.accessories.contains(.fireExtinguisher)  {
                cars[i].accessories.append(.fireExtinguisher)
                print("Автомобилю \(cars[i].model.rawValue) добавлен доп. аксессуар - огнетушитель.")
            }
            if !cars[i].accessories.contains(.firstAidKit) {
                cars[i].accessories.append(.firstAidKit)
                print("Автомобилю \(cars[i].model.rawValue) добавлен доп. аксессуар - аптечка.")
            }
        }
    }
    

    func makeSpecialOffer(car: Car) throws {
        for (i,j) in stockCars.enumerated() {
            if j.model == car.model {
                var oldPrice: Double
                guard stockCars[i].buildDate < Calendar.current.component(.year, from: Date()) else {
                    throw ServerError.noCorrectDate
                }
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
                else {
                    throw ServerError.noCorrectDate
                }
            }
        }
        for (i,j) in showroomCars.enumerated() {
            if j.model == car.model {
                guard  showroomCars[i].buildDate < Calendar.current.component(.year, from: Date()) else { throw ServerError.noCorrectDate }
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

func checkCar(dealership: Dealership, Cars: [Car]) {
    for i in Cars {
        if !i.specialOffer {
            do {
            try dealership.makeSpecialOffer(car: i)
            } catch  {
                print("Авто \(i.model.rawValue), с датой производства \(i.buildDate) не подходит под условия спец предложения")
            }
        }
    }
    
}
checkCar(dealership: dealerMercedes, Cars: dealerMercedes.cars)
checkCar(dealership: dealerBmw, Cars: dealerBmw.cars)
