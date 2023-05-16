import UIKit

enum Channel: String {
    case first = "1 канал"
    case second = "2 Канал"
    case third = "3 Канал"
}

class Television {
    var brandAndModel: [String:String]
    var isOn:Bool = false
    var curentChanel:TVChanel?
    init(brandAndModel: String){
        self .brandAndModel = brandAndModel
  
    }

func showCurentChanel() {
    if isOn == true {
        if  let chanel = curentChanel {
        print("U're watching chanel : \(chanel)")
    }
    }
    else if isOn == false {
        print("TV \(brandAndModel),is torned off")
        
    }
}
}
 let television1 = Television(brandAndModel: "LG Oled")
 television1.isOn = true
 television1.curentChanel = TVChanel.movies
 television1.showCurentChanel()
 television1.isOn = false
 television1.showCurentChanel()


struct TvSettings {
    var volume: Float
    var IsCollored: Bool
}

class SmartTV: Television {
    var settings: TvSettings // свойство для хранения настроек телевизора
    
    init(brandAndModel: String, settings: TvSettings){ // инициация
        self.settings = settings
        super.init(brandAndModel: brandAndModel)
    }
    override func showCurentChanel() { // Переопределение метода от суперкласса
        if isOn == true {
            if  let chanel = curentChanel{
                let colored = settings.IsCollored ? "color":"black and white"
                let sound = settings.volume < 0.1 ? "winhout sound":"with sound"
                print("U're watching chanel : \(chanel) in \(colored) \(sound)")
                
        }
            
        }
        else if isOn == false {
            print("TV \(brandAndModel),is torned off ")
        
        }
        }
}
let settings = TvSettings(volume: 0.1, IsCollored: true)
let smartTV = SmartTV(brandAndModel: "Xiaomi Smart", settings: settings)
smartTV.isOn = true
smartTV.curentChanel = TVChanel.music
smartTV.showCurentChanel()
smartTV.settings.IsCollored = false
smartTV.showCurentChanel()
