import UIKit

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






