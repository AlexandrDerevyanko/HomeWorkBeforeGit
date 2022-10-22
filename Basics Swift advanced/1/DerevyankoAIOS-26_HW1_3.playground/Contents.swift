//Задача 1
public class DigitalThermometr {
    let material: String
    let type: String
    private var maximumTemperature: Double // Програмно допустимые минимум и максимум температуры, к изменениям которых пользователь не должен иметь доступа
    private var minimumTemperature: Double
    
    init (material: String, type: String, maximumTemperature: Double, minimumTemperature: Double) {
        self.material = material
        self.type = type
        self.maximumTemperature = maximumTemperature
        self.minimumTemperature = minimumTemperature
    }
    
    private func calculateTemperature() {
        //Пользователь не должен влиять на способ вычисления температуры цифровым термометром
    }
    func enterTime() {
        //Пользователь устанавливает текущее время
    }
    private func displayTheTime() {
        //Функция вывода текущего времени, на принцип работы которой не должны влиять извне
    }
}

//Задача 2
class Display {
    var peopleName: String = ""
    func outputOnDisplay (name: String) {
        peopleName = name
        print(peopleName)
    }
    func outputOnDisplay (_ name: String) {
        peopleName = name
        print(peopleName)
    }
    func outputOnDisplay (employeeName: String) {
        peopleName = employeeName
        print(peopleName)
    }
}

Display().outputOnDisplay(name: "Alex")
Display().outputOnDisplay("Alex")
Display().outputOnDisplay(employeeName: "Alex")
