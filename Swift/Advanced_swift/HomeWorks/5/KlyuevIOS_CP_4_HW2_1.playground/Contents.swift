import UIKit

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
