import UIKit
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
     
    override init (name: String, country: String, genre: String, track: Tracks ) {
        super.init(name: name, country: country, genre: genre, track: track)
    }

    override func writeSong() {
       
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong() {
        print("I \(name) sang a track \(track.rawValue)")
    }
}

final class Leningrad: Artist {
    
    override init (name: String, country: String, genre: String, track: Tracks) {
        super.init(name: name, country: country, genre: genre, track: track)
    }
    
    override func writeSong() {
       
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong() {
        print("I \(name) sang a track \(track.rawValue)")
    }
}


final class LinkinPark: Artist {
    
    override init (name: String, country: String, genre: String, track: Tracks) {
        super.init(name: name, country: country, genre: genre, track: track)
    }
    
    override func writeSong() {
      
        print("I \(name) wrote a track \(track.rawValue)")
    }
    
    override func singSong()  {
        print("I \(name) sang a track \(track.rawValue)")
    }
}

let noicMC = NoizMC(name: "NoizMC", country: "Russia", genre: "Pop", track: Tracks.fromWindows)

noicMC.writeSong()

let leningrad = Leningrad(name: "Leningrad", country: "Russia", genre: "Pop", track: Tracks.vPitetePit)

leningrad.writeSong()

let linkinpark = LinkinPark(name: "Linkin park", country: "Russia", genre: "Alternative", track: Tracks.numb)

linkinpark.writeSong()

noicMC.singSong()
leningrad.singSong()
linkinpark.singSong()
