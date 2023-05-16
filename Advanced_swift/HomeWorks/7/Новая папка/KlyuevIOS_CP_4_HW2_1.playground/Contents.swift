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
    var age: Int
    init (name: String, country: String, genre: String, track: Tracks, age: Int ) {
        self.age = age
        super.init(name: name, country: country, genre: genre, track: track)
    }

    override func writeSong() {

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
