import Foundation
enum Country {
    case Russia, USA, France, Germany, UK
}

enum Genre {
    case pop, rock, rap, jazz, classical
}

class Artist {
    var artistName: String
    var country: Country
    var genre: Genre
    init(artistName: String, country: Country, genre: Genre) {
        self.artistName = artistName
        self.country = country
        self.genre = genre
    }
    func writeTrack(name: String) {
        print("I \(artistName) wrote the track \(name)")
    }
    func performedTheTrack(name: String) {
        print("I \(artistName) sang the track \(name)")
    }
}

final class BobDylan: Artist {
    let hobby: String = "Cars"
    
    override init(artistName: String, country: Country, genre: Genre) {
        super.init(artistName: artistName, country: country, genre: genre)
    }

    override func writeTrack(name: String) {
        super.writeTrack(name: name)
        print("My hobby \(hobby)")
    }
    override func performedTheTrack(name: String) {
        super.performedTheTrack(name: name)
        print("My hobby \(hobby)")
    }
}

final class JohnLennon: Artist {
    let hobby: String = "Art"
    let countryOfBirth: String = "UK"
    override init(artistName: String, country: Country, genre: Genre) {
        super.init(artistName: artistName, country: country, genre: genre)
    }
    override func writeTrack(name: String) {
        super.writeTrack(name: name)
        print("My hobby \(hobby)")
    }
    override func performedTheTrack(name: String) {
        super.performedTheTrack(name: name)
        print("My hobby \(hobby)")
    }
    func birth() {
        print("I was born in \(countryOfBirth)")
    }
}

final class ChuckBerry: Artist {
    let hobby: String = "Guitar"
    let artistProfession: String = "guitarist, singer, composer"
    override init(artistName: String, country: Country, genre: Genre) {
        super.init(artistName: artistName, country: country, genre: genre)
    }
    override func writeTrack(name: String) {
        super.writeTrack(name: name)
        print("My hobby \(hobby)")
    }
    override func performedTheTrack(name: String) {
        super.performedTheTrack(name: name)
        print("My hobby \(hobby)")
    }
    func profession() {
        print("My professions \(artistProfession)")
    }
}
var bobDylan = BobDylan(artistName: "Bob Dylan", country: .USA, genre: .pop)
var johnLennon = JohnLennon(artistName: "John Lennon", country: .UK, genre: .rock)
var chuckBerry = ChuckBerry(artistName: "Chuck Berry", country: .USA, genre: .rock)
// Задача 3

var array: [Artist] = []
array.append(bobDylan)
array.append(johnLennon)
array.append(chuckBerry)

/*
 Выполняя домашнюю работу, если смотреть хронологически, сначала я полностью разобрался с использованием перечислений в классах, когда в прошлых домашний работах были трудности с пониманием. Научился правильно писать инициализаторы в сабклассах, понял как правильно переопределять наследуемые элементы по принципу Барбары Лисков. Надеюсь, что правильно понял второй пункт второй задачи использовав модификатор "final" в классах отдельных артистов, а не в их элементах.
 */
