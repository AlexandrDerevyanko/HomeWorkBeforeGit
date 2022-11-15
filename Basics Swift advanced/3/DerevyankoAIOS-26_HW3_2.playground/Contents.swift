enum Color: CaseIterable {
    case black, white, blue, red, yellow, purple
}

enum AccessoriesList: String, CaseIterable {
    case Tinting, Alarm, Wheels, AidKit, Extinguisher
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
    var price: Double { get set }
    var accessories: [AccessoriesList] { get set }
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

struct NewCar: Car {
    var model: String
    var color: Color
    var buildDate: String
    var price: Double
    var accessories: [AccessoriesList]
    var isServiced: Bool
    var vin: String
}

var bmw1 = NewCar(model: "BMW \(BmwList.Three)", color: Color.white, buildDate: "10 january 2020", price: 80000, accessories: [], isServiced: true, vin: "B8899WE76548131")

var bmw2 = NewCar(model: "BMW \(BmwList.Seven)", color: Color.blue, buildDate: "12 january 2022", price: 198000, accessories: [], isServiced: false, vin: "B8899WE76548132")

var bmw3 = NewCar(model: "BMW \(BmwList.Three)", color: Color.white, buildDate: "10 january 2022", price: 80000, accessories: [], isServiced: true, vin: "B8899WE76548133")

var bmw4 = NewCar(model: "BMW \(BmwList.Seven)", color: Color.blue, buildDate: "12 january 2022", price: 198000, accessories: [], isServiced: false, vin: "B8899WE76548134")

var bmw5 = NewCar(model: "BMW \(BmwList.Five)", color: Color.blue, buildDate: "12 december 2021", price: 112000, accessories: [], isServiced: false, vin: "B8899WE76548135")

var bmw6 = NewCar(model: "BMW \(BmwList.Four)", color: Color.yellow, buildDate: "12 december 2021", price: 106000, accessories: [], isServiced: false, vin: "B8899WE76548136")

var bmw7 = NewCar(model: "BMW \(BmwList.Four)", color: Color.yellow, buildDate: "12 december 2021", price: 104000, accessories: [], isServiced: true, vin: "B8899WE76548137")

var bmw8 = NewCar(model: "BMW \(BmwList.Four)", color: Color.yellow, buildDate: "12 december 2021", price: 110000, accessories: [], isServiced: false, vin: "B8899WE76548138")

var audi1 = NewCar(model: "Audi \(AudiList.A6)", color: Color.black, buildDate: "16 january 2022", price: 120000, accessories: [], isServiced: true, vin: "A8899WE76548131")

var audi2 = NewCar(model: "Audi \(AudiList.A8)", color: Color.black, buildDate: "20 january 2021", price: 205000, accessories: [], isServiced: true, vin: "A8899WE76548132")

var audi3 = NewCar(model: "Audi \(AudiList.A6)", color: Color.black, buildDate: "16 january 2022", price: 120000, accessories: [], isServiced: true, vin: "A8899WE76548133")

var audi4 = NewCar(model: "Audi \(AudiList.A8)", color: Color.black, buildDate: "20 january 2022", price: 205000, accessories: [], isServiced: true, vin: "A8899WE76548134")

var audi5 = NewCar(model: "Audi \(AudiList.A6)", color: Color.black, buildDate: "20 march 2021", price: 123000, accessories: [], isServiced: true, vin: "A8899WE76548135")

var audi6 = NewCar(model: "Audi \(AudiList.A6)", color: Color.black, buildDate: "20 april 2021", price: 123000, accessories: [], isServiced: true, vin: "A8899WE76548136")

var audi7 = NewCar(model: "Audi \(AudiList.A7)", color: Color.black, buildDate: "20 april 2021", price: 129000, accessories: [], isServiced: true, vin: "A8899WE76548137")

var audi8 = NewCar(model: "Audi \(AudiList.A8)", color: Color.black, buildDate: "20 september 2021", price: 205000, accessories: [], isServiced: true, vin: "A8899WE76548138")

var porsche1 = NewCar(model: "Porsche \(PorscheList.Taycan)", color: Color.purple, buildDate: "10 january 2022", price: 223000, accessories: [], isServiced: false, vin: "P8899WE76548131")

var porsche2 = NewCar(model: "Porsche \(PorscheList.Boxter)", color: Color.red, buildDate: "11 january 2022", price: 98000, accessories: [], isServiced: false, vin: "P8899WE76548132")

var porsche3 = NewCar(model: "Porsche \(PorscheList.Boxter)", color: Color.red, buildDate: "11 january 2022", price: 98000, accessories: [], isServiced: true, vin: "P8899WE76548133")

var porsche4 = NewCar(model: "Porsche \(PorscheList.Boxter)", color: Color.red, buildDate: "11 january 2021", price: 98000, accessories: [], isServiced: false, vin: "P8899WE76548134")

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
        if name.isServiced == false {
            for index in showroomCars.indices {
                if name.vin == showroomCars[index].vin {
                    showroomCars[index].isServiced = true
                }
            }
        }
        print("Pre-sale preparation for the car \(name.model) VIN code: \(name.vin)")
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        presaleService(name: name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
    }
    func sellCar(name: Car) {
        for i in showroomCars.indices {
            if showroomCars[i].isServiced == false {
                presaleService(name: showroomCars[i])
            }
        }
        showroomCars.removeAll { $0.vin == name.vin }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])
        print("Car \(stockCars[stockCars.count - 1].model) VIN code: \(stockCars[stockCars.count - 1].vin) added to parking")
    }
}

extension BmwAutoHouse: SpecialOffer {
    func addEmergencyPack() {
        for index in stockCars.indices {
            stockCars[index].accessories.append(AccessoriesList.AidKit)
            stockCars[index].accessories.append(AccessoriesList.Extinguisher)
               }
        for i in showroomCars.indices {
            showroomCars[i].accessories.append(AccessoriesList.AidKit)
            showroomCars[i].accessories.append(AccessoriesList.Extinguisher)
        }
    }
    func makeSpecialOffer() {
            for i in showroomCars.indices {
                if showroomCars[i].buildDate.contains("2022") {
                    
                } else {
                    showroomCars[i].price = showroomCars[i].price * 0.85
                }
            }
            for index in stockCars.indices {
                if stockCars[index].buildDate.contains("2022") {
                    
                } else {
                    stockCars[index].price = stockCars[index].price * 0.85
                    addToShowroom(name: stockCars[index])
                }
            }
        for i in showroomCars.indices {
            if showroomCars[i].accessories.contains(.AidKit) {
                
            } else {
                showroomCars[i].accessories.append(AccessoriesList.AidKit)
                showroomCars[i].accessories.append(AccessoriesList.Extinguisher)
            }
        }
        for index in stockCars.indices {
            if stockCars[index].accessories.contains(.AidKit) {
                
            } else {
                stockCars[index].accessories.append(AccessoriesList.AidKit)
                stockCars[index].accessories.append(AccessoriesList.Extinguisher)
            }
        }
    }
    
}

var bmwAutoHouse = BmwAutoHouse()
bmwAutoHouse.offerAccesories(nameOfAccessories: accessories)
bmwAutoHouse.presaleService(name: bmw2)
bmwAutoHouse.addToShowroom(name: bmw1)
bmwAutoHouse.sellCar(name: bmw2)
bmwAutoHouse.orderCar()
bmwAutoHouse.addEmergencyPack()
bmwAutoHouse.makeSpecialOffer()

class BmwAvilon: Dealership {
    var name: String = "BMW Avilon"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [bmw3]
    var showroomCars: [Car] = [bmw4]
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
        print("Pre-sale preparation for the car \(name.model) VIN code: \(name.vin)")
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        if name.isServiced == false {
            presaleService(name: name)
        }
    }
    func sellCar(name: Car) {
        presaleService(name: name)
        showroomCars.removeAll { $0.vin == name.vin }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])

    }
}

extension BmwAvilon: SpecialOffer {
    func addEmergencyPack() {
        for index in stockCars.indices {
            stockCars[index].accessories.append(AccessoriesList.AidKit)
            stockCars[index].accessories.append(AccessoriesList.Extinguisher)
               }
        for i in showroomCars.indices {
            showroomCars[i].accessories.append(AccessoriesList.AidKit)
            showroomCars[i].accessories.append(AccessoriesList.Extinguisher)
        }
    }
    func makeSpecialOffer() {
            for i in showroomCars.indices {
                if showroomCars[i].buildDate.contains("2022") {
                    
                } else {
                    showroomCars[i].price = showroomCars[i].price * 0.85
                }
            }
            for index in stockCars.indices {
                if stockCars[index].buildDate.contains("2022") {
                    
                } else {
                    stockCars[index].price = stockCars[index].price * 0.85
                }
            }
    }
}
var bmwAvilon = BmwAvilon()

class AudiCenter: Dealership {
    var name: String = "Audi Center"
    var showroomCapacity: Int = 8
    var stockCars: [Car] = [audi1]
    var showroomCars: [Car] = [audi2]
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
        print("Pre-sale preparation for the car \(name.model) VIN code: \(name.vin)")
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        if name.isServiced == false {
            presaleService(name: name)
        }
    }
    func sellCar(name: Car) {
        for i in showroomCars.indices {
            if showroomCars[i].isServiced == false {
                presaleService(name: showroomCars[i])
            }
        }
        showroomCars.removeAll { $0.vin == name.vin }
        if name.accessories.isEmpty {
            offerAccesories(nameOfAccessories: accessories)
        }
        print("Car \(name.model) VIN code: \(name.vin) sold")
    }
    func orderCar() {
        stockCars.append(carsInTheWarehouseBmw1[Int.random(in: 0..<carsInTheWarehouseBmw1.count)])

    }
}

extension AudiCenter: SpecialOffer {
    func addEmergencyPack() {
        for index in stockCars.indices {
            stockCars[index].accessories.append(AccessoriesList.AidKit)
            stockCars[index].accessories.append(AccessoriesList.Extinguisher)
               }
        for i in showroomCars.indices {
            showroomCars[i].accessories.append(AccessoriesList.AidKit)
            showroomCars[i].accessories.append(AccessoriesList.Extinguisher)
        }
    }
    func makeSpecialOffer() {
            for i in showroomCars.indices {
                if showroomCars[i].buildDate.contains("2022") {
                    
                } else {
                    showroomCars[i].price = showroomCars[i].price * 0.85
                }
            }
            for index in stockCars.indices {
                if stockCars[index].buildDate.contains("2022") {
                    
                } else {
                    stockCars[index].price = stockCars[index].price * 0.85
                }
            }
    }
}
var audiCenter = AudiCenter()

class AudiAvilon: Dealership {
    var name: String = "Audi Avilon"
    var showroomCapacity: Int = 9
    var stockCars: [Car] = [audi3]
    var showroomCars: [Car] = [audi4]
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
        print("Pre-sale preparation for the car \(name.model) VIN code: \(name.vin)")
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        if name.isServiced == false {
            presaleService(name: name)
        }
    }
    func sellCar(name: Car) {
        for i in showroomCars.indices {
            if showroomCars[i].isServiced == false {
                presaleService(name: showroomCars[i])
            }
        }
        showroomCars.removeAll { $0.vin == name.vin }
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
    var stockCars: [Car] = [porsche1]
    var showroomCars: [Car] = [porsche2]
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
        print("Pre-sale preparation for the car \(name.model) VIN code: \(name.vin)")
    }
        
    func addToShowroom(name: Car) {
        stockCars.removeAll { $0.vin == name.vin }
        showroomCars.append(name)
        print("\(name.model) VIN code: \(name.vin) added to car dealership")
        if name.isServiced == false {
            presaleService(name: name)
        }
    }
    func sellCar(name: Car) {
        for i in showroomCars.indices {
            if showroomCars[i].isServiced == false {
                presaleService(name: showroomCars[i])
            }
        }
        showroomCars.removeAll { $0.vin == name.vin }
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
