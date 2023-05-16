import UIKit


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

