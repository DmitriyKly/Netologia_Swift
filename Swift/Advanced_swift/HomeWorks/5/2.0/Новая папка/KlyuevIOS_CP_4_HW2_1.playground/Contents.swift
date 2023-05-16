import UIKit

struct TrackMusic {
    var name: String
    var artist: String
    var trackDuractionSec: Int
    var country: String
}

enum GenreMusic {
    
    case pop
    case metal
    case alternative
}


class CategoryMusic {
    var name: String
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
    
    init (listTrack: [TrackMusic], name: String) {
        self.listTrack = listTrack
        self.name = name
    }
    
    
    func addTrack(track: TrackMusic) {
        self.listTrack.append(track)
    
    }
    
    
     func removeTrack(track: TrackMusic) {
         listTrack.removeAll(where: {$0.name == track.name })
        }
    }
     



let track01 = TrackMusic(name: "Из окна" , artist: "NoizMC", trackDuractionSec: 312, country: "Russian")

let track02 = TrackMusic(name: "Numb", artist: "LinkinPark", trackDuractionSec: 415, country: "USA")

let track03 = TrackMusic(name: "Du hast", artist: "Rammstein", trackDuractionSec: 268, country: "Deutschland")

let track04 = TrackMusic(name: "Выдыхай" , artist: "NoizMC", trackDuractionSec: 312, country: "Russian")

let track05 = TrackMusic(name: "lost", artist: "LinkinPark", trackDuractionSec: 415, country: "USA")

let track06 = TrackMusic(name: "Ich will", artist: "Rammstein", trackDuractionSec: 268, country: "Deutschland")


var popMusic = CategoryMusic(listTrack: [track01], name: "Pop")
popMusic.addTrack(track: track04)
popMusic.removeTrack(track: track01)
popMusic.countTracks

var alternativeMusic = CategoryMusic(listTrack: [track02], name: "Alternative")
alternativeMusic.addTrack(track: track05)
alternativeMusic.removeTrack(track: track02)
alternativeMusic.countTracks

var metalMusic = CategoryMusic(listTrack: [track03], name: "Metal")
metalMusic.addTrack(track: track06)
metalMusic.removeTrack(track: track03)
metalMusic.countTracks



print("The \(popMusic.name) has \(popMusic.countTracks) tracks and total duraction(sec): \(popMusic.trackDuractionSec)")

print("The \(alternativeMusic.name) has \(alternativeMusic.countTracks) tracks and total duraction(sec): \(alternativeMusic.trackDuractionSec)")

print("The \(metalMusic.name) has \(metalMusic.countTracks) tracks and total duraction(sec): \(metalMusic.trackDuractionSec)")


// task 2

class Library {

    var categories: [CategoryMusic]
        
    init(categories: [CategoryMusic] ) {
        self.categories = categories
    }
       func addCategory(category: CategoryMusic) {
        categories.append(category)
    }
    func removeCategory(category: CategoryMusic) {
        categories.removeAll(where: {$0.name == category.name })
    }
}

var library = Library(categories: [popMusic,metalMusic])
library.addCategory(category: alternativeMusic)
library.removeCategory(category: metalMusic)



