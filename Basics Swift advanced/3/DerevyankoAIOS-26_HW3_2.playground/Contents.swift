enum Color: CaseIterable {
    case black, white, blue, red, yellow, purple
}

enum AccessoriesList: String, CaseIterable {
    case Tinting, Alarm, Wheels, AidKit
}
var accessories = AccessoriesList.allCases

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
    
    func offerAccesories(nameOfAccessories : [AccessoriesList]) // Принимает массив акксесуаров в качестве параметра. Метод предлагает клиенту купить доп. оборудование
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

struct Bmw5: Car {
    var model: String = "BMW \(BmwList.Five)"
    var color: Color = Color.blue
    var buildDate: String = "12 december 2021"
    var price: Int = 112000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "B8899WE76548135"
}
var bmw5 = Bmw5()

struct Bmw6: Car {
    var model: String = "BMW \(BmwList.Four)"
    var color: Color = Color.yellow
    var buildDate: String = "12 december 2021"
    var price: Int = 106000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "B8899WE76548136"
}
var bmw6 = Bmw6()

struct Bmw7: Car {
    var model: String = "BMW \(BmwList.Four)"
    var color: Color = Color.yellow
    var buildDate: String = "12 december 2021"
    var price: Int = 104000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "B8899WE76548137"
}
var bmw7 = Bmw7()

struct Bmw8: Car {
    var model: String = "BMW \(BmwList.Four)"
    var color: Color = Color.yellow
    var buildDate: String = "12 december 2021"
    var price: Int = 110000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "B8899WE76548138"
}
var bmw8 = Bmw8()

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
var audi2 = Audi2()

struct Audi3: Car {
    var model: String = "Audi \(AudiList.A6)"
    var color: Color = Color.black
    var buildDate: String = "16 january 2022"
    var price: Int = 120000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548133"
}
var audi3 = Audi3()

struct Audi4: Car {
    var model: String = "Audi \(AudiList.A8)"
    var color: Color = Color.black
    var buildDate: String = "20 january 2022"
    var price: Int = 205000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548134"
}
var audi4 = Audi4()

struct Audi5: Car {
    var model: String = "Audi \(AudiList.A6)"
    var color: Color = Color.black
    var buildDate: String = "20 march 2021"
    var price: Int = 123000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548135"
}
var audi5 = Audi5()

struct Audi6: Car {
    var model: String = "Audi \(AudiList.A6)"
    var color: Color = Color.black
    var buildDate: String = "20 april 2021"
    var price: Int = 123000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548136"
}
var audi6 = Audi6()

struct Audi7: Car {
    var model: String = "Audi \(AudiList.A7)"
    var color: Color = Color.black
    var buildDate: String = "20 april 2021"
    var price: Int = 129000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548137"
}
var audi7 = Audi7()

struct Audi8: Car {
    var model: String = "Audi \(AudiList.A8)"
    var color: Color = Color.black
    var buildDate: String = "20 september 2021"
    var price: Int = 205000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "A8899WE76548138"
}
var audi8 = Audi8()

struct Porsche1: Car {
    var model: String = "Porsche \(PorscheList.Taycan)"
    var color: Color = Color.purple
    var buildDate: String = "10 january 2022"
    var price: Int = 223000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "P8899WE76548131"
}
var porsche1 = Porsche1()

struct Porsche2: Car {
    var model: String = "Porsche \(PorscheList.Boxter)"
    var color: Color = Color.red
    var buildDate: String = "11 january 2022"
    var price: Int = 98000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "P8899WE76548132"
}
var porsche2 = Porsche2()

struct Porsche3: Car {
    var model: String = "Porsche \(PorscheList.Boxter)"
    var color: Color = Color.red
    var buildDate: String = "11 january 2022"
    var price: Int = 98000
    var accessories: [String] = []
    var isServiced: Bool = true
    var vin: String = "P8899WE76548133"
}
var porsche3 = Porsche3()

struct Porsche4: Car {
    var model: String = "Porsche \(PorscheList.Boxter)"
    var color: Color = Color.red
    var buildDate: String = "11 january 2021"
    var price: Int = 98000
    var accessories: [String] = []
    var isServiced: Bool = false
    var vin: String = "P8899WE76548134"
}
var porsche4 = Porsche4()

var carsInTheWarehouseBmw1: [Car] = [bmw5, bmw6, bmw7]
var carsInTheWarehouseBmw2: [Car] = [bmw7, bmw8]
var carsInTheWarehouseAudi1: [Car] = [audi5, audi6]
var carsInTheWarehouseAudi2: [Car] = [audi7, audi8]
var carsInTheWarehousePorsche: [Car] = [porsche1, porsche2]

//  Пункт 2
class BmwAutoHouse: Dealership {
    var name: String = "BMW Auto House"
    var showroomCapacity: Int = 12
    var stockCars: [Car] = [bmw1]
    var showroomCars: [Car] = [bmw2]
    var cars: [Car] {
        get {
            stockCars + showroomCars
        } set {

        }
    }
    
    var tagline: String = "Freude am Fahren"


    func offerAccesories(nameOfAccessories: [AccessoriesList]) {
        print("you can buy the following accessories\(nameOfAccessories)")
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
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        presaleService(name: name)
    }
    func sellCar(name: Car) {
        showroomCars.removeAll { $0.vin == name.vin }
        if name.isServiced == false {
            presaleService(name: name)
        }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
    }
}

var bmwAutoHouse = BmwAutoHouse()

class BmwAvilon: Dealership {
    var name: String = "BMW Avilon"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [Bmw3()]
    var showroomCars: [Car] = [Bmw4()]
    var cars: [Car] {
        get {
            stockCars + showroomCars
        } set {

        }
    }
    
    var tagline: String = "Freude am Fahren"


    func offerAccesories(nameOfAccessories: [AccessoriesList]) {
        print("you can buy the following accessories\(nameOfAccessories)")
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
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        presaleService(name: name)
    }
    func sellCar(name: Car) {
        showroomCars.removeAll { $0.vin == name.vin }
        if name.isServiced == false {
            presaleService(name: name)
        }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
    }
}

var bmwAvilon = BmwAvilon()

class AudiCenter: Dealership {
    var name: String = "Audi Center"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [Audi1()]
    var showroomCars: [Car] = [Audi2()]
    var cars: [Car] {
        get {
            stockCars + showroomCars
        } set {

        }
    }
    
    var tagline: String = "Advancement through technology"

    func offerAccesories(nameOfAccessories: [AccessoriesList]) {
        print("you can buy the following accessories\(nameOfAccessories)")
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
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        presaleService(name: name)
    }
    func sellCar(name: Car) {
        showroomCars.removeAll { $0.vin == name.vin }
        if name.isServiced == false {
            presaleService(name: name)
        }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
    }
}

var audiCenter = AudiCenter()

class AudiAvilon: Dealership {
    var name: String = "Audi Avilon"
    var showroomCapacity: Int = 9
    var stockCars: [Car] = [Audi3()]
    var showroomCars: [Car] = [Audi4()]
    var cars: [Car] {
        get {
            stockCars + showroomCars
        } set {

        }
    }
    
    var tagline: String = "Advancement through technology"

    func offerAccesories(nameOfAccessories: [AccessoriesList]) {
        print("you can buy the following accessories\(nameOfAccessories)")
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
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        presaleService(name: name)
    }
    func sellCar(name: Car) {
        showroomCars.removeAll { $0.vin == name.vin }
        if name.isServiced == false {
            presaleService(name: name)
        }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
    }
}
var audiAvilon = AudiAvilon()

class PorscheAvilon: Dealership {
    var name: String = "Porsche Avilon"
    var showroomCapacity: Int = 6
    var stockCars: [Car] = [Porsche1()]
    var showroomCars: [Car] = [Porsche2()]
    var cars: [Car] {
        get {
            stockCars + showroomCars
        } set {

        }
    }
    
    var tagline: String = "There Is No Substitute"

    func offerAccesories(nameOfAccessories: [AccessoriesList]) {
        print("you can buy the following accessories\(nameOfAccessories)")
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
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        presaleService(name: name)
    }
    func sellCar(name: Car) {
        showroomCars.removeAll { $0.vin == name.vin }
        if name.isServiced == false {
            presaleService(name: name)
        }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
    }
}

var porscheAvilon = PorscheAvilon()

//  Пункт 3
var dealers: [Dealership] = [bmwAutoHouse, bmwAvilon, audiCenter, audiAvilon, porscheAvilon]

for object in dealers {
    if object is BmwAutoHouse {
        print("\(object.name) - \(object.tagline)")
    } else if object is BmwAvilon {
        print("\(object.name) - \(object.tagline)")
    } else if object is AudiCenter {
        print("\(object.name) - \(object.tagline)")
    } else if object is AudiAvilon {
        print("\(object.name) - \(object.tagline)")
    } else if object is PorscheAvilon{
        print("\(object.name) - \(object.tagline)")
    } else {
        print("Error")
    }
}

// Часть 4
protocol SpecialOffer {
    func addEmergencyPack() // Не принимает никаких параметров. Метод добавляет аптечку и огнетушитель к доп. оборудованию машины
    func makeSpecialOffer() // Не принимает никаких параметров. Метод проверяет дату выпуска авто, если год выпуска машины меньше текущего, нужно сделать скидку 15%, а также добавить аптеку и огнетушитель
}
