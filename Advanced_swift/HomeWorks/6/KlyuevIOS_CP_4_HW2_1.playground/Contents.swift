import UIKit

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

