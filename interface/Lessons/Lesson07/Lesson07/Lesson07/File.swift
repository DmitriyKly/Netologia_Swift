//
//  File.swift
//  Lesson07
//
//  Created by dmitriy on 16/6/2023.
//

import UIKit

struct CarModel {
    let name: String
    let image: UIImage
    let description: String?
    
    static func makeMockModel() -> [CarModel] {
        var model = [CarModel]()
        
        model.append(CarModel(name: "Mercedes A ", image: UIImage(named: "MercedesA")!, description: "Mercedes benz"))
        model.append(CarModel(name: "BMW", image: UIImage(named: "Bmwf20")!, description: "BMW f20"))
        model.append(CarModel(name: "Audi", image: UIImage(named: "AudiA1")!, description: "Audi A1"))
        
     return model
    }
}

