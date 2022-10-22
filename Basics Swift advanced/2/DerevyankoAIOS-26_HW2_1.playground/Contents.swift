// Задача 1
class TV {
    enum Channels: String {
        case RussiaToday, CNN, FoxNews, TNT, STS
    }
    var tvMark: [String: String]
    var tvPower: Bool = false {
        didSet {
            if tvPower {
                print("Телевизор включен")
            } else {
                print("Телевищор выключен")
            }
        }
    }
    var tvChannel = Channels.CNN
    init (tvMark: [String: String]) {
        self.tvMark = tvMark
    }
    func getChannel() {
        switch tvChannel {
        case .RussiaToday:
            print("Сейчас включен канал RussiaToday")
        case .CNN:
            print("Сейчас включен канал CNN")
        case .FoxNews:
            print("Сейчас включен канал FoxNews")
        case .TNT:
            print("Сейчас включен канал TNT")
        case .STS:
            print("Сейчас включен канал STS")
        }
    }
}

var sonyTv = TV(tvMark: ["Sony" : "A1"])
sonyTv.getChannel()
sonyTv.tvChannel = .RussiaToday
sonyTv.getChannel()

// Задача 2
class SmartTV: TV {
    var settings: Settings
    init (settings: Settings) {
        self.settings = settings
        super.init (tvMark: ["Sony" : "A2"])
    }
    override func getChannel() {
        switch tvChannel {
        case .RussiaToday:
            print("Сейчас включен канал RussiaToday, громкость \(settings.volume), картинка \(settings.isColor ? "цветная" : "черно белая")")
        case .CNN:
            print("Сейчас включен канал CNN, громкость \(settings.volume), картинка \(settings.isColor ? "цветная" : "черно белая")")
        case .FoxNews:
            print("Сейчас включен канал FoxNews, громкость \(settings.volume), картинка \(settings.isColor ? "цветная" : "черно белая")")
        case .TNT:
            print("Сейчас включен канал TNT, громкость \(settings.volume), картинка \(settings.isColor ? "цветная" : "черно белая")")
        case .STS:
            print("Сейчас включен канал STS, громкость \(settings.volume), картинка \(settings.isColor ? "цветная" : "черно белая")")
        }
    }
}

struct Settings {
    var volume: Double
    var isColor: Bool
}
var sonyTv2 = SmartTV(settings: Settings.init(volume: 0.5, isColor: true))
sonyTv2.getChannel()
