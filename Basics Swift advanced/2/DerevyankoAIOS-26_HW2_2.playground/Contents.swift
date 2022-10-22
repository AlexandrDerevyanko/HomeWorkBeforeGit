struct Track {
    var name: String
    var executor: String
    var duration: Double
    var country: String
}

class Category {
    var nameCategory: String
    var trackList: [Track] = []
    var numberOfTracks: Int { trackList.count }
    init (nameCategory: String) {
        self.nameCategory = nameCategory
    }
    
    func addTrack(track: Track) {
        trackList.append(track)
    }

    func removeTrack(trackName: Track) {
        trackList.removeAll { $0.name == trackName.name }
    }
}

class Library {
    var name: String
    var categoryList: [Category] = []
    var numberOfCategory: Int { categoryList.count }
    init (name: String) {
        self.name = name
    }
    func addCategory (name: Category) {
        library.categoryList.append(name)
    }
    func removeCategory(name: Category) {
        categoryList.removeAll { $0.nameCategory == name.nameCategory }
    }
}

var library = Library(name: "Library")

var popular = Category(nameCategory: "Popular")
var rock = Category(nameCategory: "Rock")
var rap = Category(nameCategory: "Rap")

var chandelier = Track(name: "Chandelier", executor: "Sia", duration: 2.24, country: "USA" )
var soon = Track(name: "Soon We’ll Be Found", executor: "Sia", duration: 3.40, country: "USA")
var parler = Track(name: "Parler A Mon Pere", executor: "Celine Dion", duration: 2.54, country: "USA")

popular.addTrack(track: chandelier)
popular.addTrack(track: soon)
popular.addTrack(track: parler)
popular.trackList
popular.numberOfTracks
popular.removeTrack(trackName: parler)
popular.trackList

library.addCategory(name: popular)
library.addCategory(name: rock)
library.addCategory(name: rap)
library.removeCategory(name: rap)
library.categoryList
library.numberOfCategory

