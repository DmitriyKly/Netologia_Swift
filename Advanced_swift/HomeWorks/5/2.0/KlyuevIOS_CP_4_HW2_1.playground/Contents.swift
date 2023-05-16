
enum Country {
    case USA
    case UK
    case Canada
    case Australia
    case Other
}

class Track {
    var name: String
    var artist: String
    var duration: Double
    var country: Country
    
    init(name: String, artist: String, duration: Double, country: Country) {
        self.name = name
        self.artist = artist
        self.duration = duration
        self.country = country
    }
}

// Определение свойств и методов класса Category
class Category {
    var name: String
    var tracks: [Track]
    lazy var trackCount: Int = tracks.count
    
    init(name: String, tracks: [Track]) {
        self.name = name
        self.tracks = tracks
    }
    
    func addTrack(track: Track) {
        tracks.append(track)
    }
    
    func removeTrack(track: Track) {
        tracks = tracks.filter { $0.name != track.name }
    }
}

// Определение свойств и методов класса Library
class Library {
    var categories: [Category]
    lazy var categoryCount: Int = categories.count
    
    init(categories: [Category]) {
        self.categories = categories
    }
    
    func addCategory(category: Category) {
        categories.append(category)
    }
    
    func removeCategory(category: Category) {
        categories = categories.filter { $0.name != category.name }
    }
}



// создание треков
let track1 = Track(name: "Song 1", artist: "Artist 1", duration: 3.5, country: .USA)
let track2 = Track(name: "Song 2", artist: "Artist 2", duration: 2.5, country: .UK)
let track3 = Track(name: "Song 3", artist: "Artist 3", duration: 4.0, country: .Australia)
let track4 = Track(name: "Song 4", artist: "Artist 4", duration: 3.0, country: .Canada)

// создание категорий
let popCategory = Category(name: "Pop", tracks: [track1, track2])
let rockCategory = Category(name: "Rock", tracks: [track3, track4])

// создание библиотеки
let library = Library(categories: [popCategory, rockCategory])

// добавление новой категории
let jazzCategory = Category(name: "Jazz", tracks: [])
library.addCategory(category: jazzCategory)

// добавление нового трека в категорию
let track5 = Track(name: "Song 5", artist: "Artist 5", duration: 4.5, country: .UK)
jazzCategory.addTrack(track: track5)

// удаление категории
library.removeCategory(category: popCategory)

// удаление трека из категории
rockCategory.removeTrack(track: track4)

