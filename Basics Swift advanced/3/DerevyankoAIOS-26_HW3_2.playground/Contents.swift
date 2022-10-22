enum Color: CaseIterable {
    case black, white, blue, red, yellow, purple
}

enum AccessoriesList: CaseIterable {
    case Tinting, Alarm, wheels
}
var accessories = [AccessoriesList.allCases]

enum BmwList: CaseIterable {
    case Three, Four, Five, Seven, Eight
}
enum AudiList: CaseIterable {
    case A3, A4, A5, A6, A7, A8
}
enum PorscheList: CaseIterable {
    case Taycan, Panamera, Boxter
}
// Часть 1
protocol Car {
    var model: String { get }
    var color: Color { get }
    var buildDate: String { get } // Дата выпуска
    var price: Int { get set }
    var accessories: [String] { get set }
    var isServiced: Bool { get set } // Сделана ли предпродажная подготовка
    var vin: String { get set }
}

//Часть 2
protocol Dealership {
    var name: String { get } // Назвать по марке машины для упрощения
    var tagline: String { get } // Слоган
    var showroomCapacity: Int { get } // максимальная вместимость автосалона по количеству машин
    var stockCars: [Car] { get set } // Машины, находящиеся на парковке склада. Представим, что парковка не имеет лимита по количеству машин.
    var showroomCars: [Car] { get set } // Машины, находящиеся в автосалоне
    var cars: [Car] { get set } // Хранит список всех машин в наличии
    
    func offerAccesories(nameOfAccessories : [String]) // Принимает массив акксесуаров в качестве параметра. Метод предлагает клиенту купить доп. оборудование
    func presaleService(name : Car) // Принимает машину в качестве параметра. Метод отправляет машину на предпродажную подготовку
    func addToShowroom(name : Car) // Также принимает машину в качестве параметра. Метод перегоняет машину с парковки склада в автосалон, при этом выполняет предпродажную подготовку
    func sellCar(name : Car) // Также принимает машину в качестве параметра. Метод продает машину из автосалона при этом проверяет, выполнена ли предпродажная подготовка. Также, если у машины отсутсвует доп. оборудование, нужно предложить клиенту его купить. (давайте представим, что клиент всегда соглашается и покупает)
    func orderCar() // Не принимает и не возвращает параметры. Метод делает заказ новой машины с завода, т.е. добавляет машину на парковку склада
}

/*
 Обратите внимание! Каждый метод должен выводить в консоль информацию о машине и выполненном действии с ней.
 */

//Часть 3
//  Пункт 1
struct Bmw1: Car {
    var model: String = "BMW \(BmwList.Three)"
    var color: Color = Color.white
    var buildDate: String = "10 january 2022"
    var price: Int = 80000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "B8899WE76548131"
}
var bmw1 = Bmw1()

struct Bmw2: Car {
    var model: String = "BMW \(BmwList.Seven)"
    var color: Color = Color.blue
    var buildDate: String = "12 january 2022"
    var price: Int = 198000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "B8899WE76548132"
}
var bmw2 = Bmw2()

struct Bmw3: Car {
    var model: String = "BMW \(BmwList.Three)"
    var color: Color = Color.white
    var buildDate: String = "10 january 2022"
    var price: Int = 80000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "B8899WE76548133"
}
var bmw3 = Bmw3()

struct Bmw4: Car {
    var model: String = "BMW \(BmwList.Seven)"
    var color: Color = Color.blue
    var buildDate: String = "12 january 2022"
    var price: Int = 198000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "B8899WE76548134"
}
var bmw4 = Bmw4()

struct Audi1: Car {
    var model: String = "Audi \(AudiList.A6)"
    var color: Color = Color.black
    var buildDate: String = "16 january 2022"
    var price: Int = 120000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548131"
}
var audi1 = Audi1()

struct Audi2: Car {
    var model: String = "Audi \(AudiList.A8)"
    var color: Color = Color.black
    var buildDate: String = "20 january 2022"
    var price: Int = 205000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548132"
}

struct Audi3: Car {
    var model: String = "Audi \(AudiList.A6)"
    var color: Color = Color.black
    var buildDate: String = "16 january 2022"
    var price: Int = 120000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548133"
}

struct Audi4: Car {
    var model: String = "Audi \(AudiList.A8)"
    var color: Color = Color.black
    var buildDate: String = "20 january 2022"
    var price: Int = 205000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548134"
}

struct Porsche1: Car {
    var model: String = "Porsche \(PorscheList.Taycan)"
    var color: Color = Color.purple
    var buildDate: String = "10 january 2022"
    var price: Int = 223000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "P8899WE76548131"
}

struct Porsche2: Car {
    var model: String = "Porsche \(PorscheList.Boxter)"
    var color: Color = Color.red
    var buildDate: String = "11 january 2022"
    var price: Int = 98000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "P8899WE76548132"
}

//  Пункт 2
class BmwAutoHouse: Dealership {
    var name: String = "BMW Auto House"
    var showroomCapacity: Int = 12
    var stockCars: [Car] = [bmw1]
    var showroomCars: [Car] = [bmw2]
    var cars: [Car] = []
    var tagline: String = "Freude am Fahren"

    init() {
        self.cars = showroomCars + stockCars
    }

    func offerAccesories(nameOfAccessories: [String]) {
        print(nameOfAccessories)
    }
    func presaleService(name: Car) {
            for i in stockCars.indices {
                if name.vin == stockCars[i].vin {
                    stockCars[i].isServiced = true
                }
            }
            for index in showroomCars.indices {
                if name.vin == showroomCars[index].vin {
                    showroomCars[index].isServiced = true
                }
            }
        cars = showroomCars + stockCars
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        cars = showroomCars + stockCars
    }
    func sellCar(name: Car) {

    }
    func orderCar() {

    }
}
var bmwAutoHouse = BmwAutoHouse()

bmwAutoHouse.addToShowroom(name: audi1)

bmwAutoHouse.presaleService(name: bmw2)
class BmwAvilon: Dealership {
    var name: String = "BMW Avilon"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [Bmw3()]
    var showroomCars: [Car] = [Bmw4()]
    var cars: [Car] = []
    var tagline: String = "Freude am Fahren"

    init() {
        self.cars = showroomCars + stockCars
    }

    func offerAccesories(nameOfAccessories: [String]) {

    }
    func presaleService(name: Car) {

    }
    func addToShowroom(name: Car) {

    }
    func sellCar(name: Car) {

    }
    func orderCar() {

    }
}

class AudiCenter: Dealership {
    var name: String = "Audi Center"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [Audi1()]
    var showroomCars: [Car] = [Audi2()]
    var cars: [Car] = []
    var tagline: String = "Advancement through technology"

    init() {
        self.cars = showroomCars + stockCars
    }

    func offerAccesories(nameOfAccessories: [String]) {

    }
    func presaleService(name: Car) {

    }
    func addToShowroom(name: Car) {

    }
    func sellCar(name: Car) {

    }
    func orderCar() {

    }
}

class AudiAvilon: Dealership {
    var name: String = "Audi Avilon"
    var showroomCapacity: Int = 9
    var stockCars: [Car] = [Audi3()]
    var showroomCars: [Car] = [Audi4()]
    var cars: [Car] = []
    var tagline: String = "Advancement through technology"

    init() {
        self.cars = showroomCars + stockCars
    }

    func offerAccesories(nameOfAccessories: [String]) {

    }
    func presaleService(name: Car) {

    }
    func addToShowroom(name: Car) {

    }
    func sellCar(name: Car) {

    }
    func orderCar() {

    }
}

class PorscheAvilon: Dealership {
    var name: String = "Porsche Avilon"
    var showroomCapacity: Int = 6
    var stockCars: [Car] = [Porsche1()]
    var showroomCars: [Car] = [Porsche2()]
    var cars: [Car] = []
    var tagline: String = "There Is No Substitute"

    init() {
        self.cars = showroomCars + stockCars
    }

    func offerAccesories(nameOfAccessories: [String]) {

    }
    func presaleService(name: Car) {

    }
    func addToShowroom(name: Car) {

    }
    func sellCar(name: Car) {

    }
    func orderCar() {

    }
}
BmwAutoHouse().showroomCars
//  Пункт 3
var dealers: [Dealership] = [BmwAutoHouse(), BmwAvilon(), AudiCenter(), AudiAvilon(), PorscheAvilon()]

for object in dealers {
    if object is Dealership {
        print("\(object.name) - \(object.tagline)")
    } else {
        print("error")
    }
}

// Часть 4
protocol SpecialOffer {
    func addEmergencyPack() // Не принимает никаких параметров. Метод добавляет аптечку и огнетушитель к доп. оборудованию машины
    func makeSpecialOffer() // Не принимает никаких параметров. Метод проверяет дату выпуска авто, если год выпуска машины меньше текущего, нужно сделать скидку 15%, а также добавить аптеку и огнетушитель
}

