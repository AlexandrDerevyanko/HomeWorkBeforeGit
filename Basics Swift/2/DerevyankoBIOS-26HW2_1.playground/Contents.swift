let january: String = "Январь"
let february: String = "Февраль"
let march: String = "Март"
let april: String = "Апрель"
let may: String = "Май"
let june: String = "Июнь"
let july: String = "Июль"
let august: String = "Август"
let september: String = "Сентябрь"
let october: String = "Октябрь"
let november: String = "Ноябрь"
let december: String = "Декабрь"
var selectedMonth: String = "Май"
var isHoliday: Bool = false
if selectedMonth == january {
    print("В январе 15 рабочих дней")
} else if selectedMonth == february {
    print("В феврале 19 рабочих дней")
} else if selectedMonth == march {
    print("В марте 22 рабочих дня")
} else if selectedMonth == april {
    print("В апреле 22 рабочих дня")
} else if selectedMonth == may {
    print("В мае 22 рабочих дня")
} else if selectedMonth == june {
    print("В июне 21 рабочий день")
} else if selectedMonth == july {
    print("В июле 23 рабочих дня")
} else if selectedMonth == august {
    print("В августе 23 рабочих дня")
} else if selectedMonth == september {
    print("В сентябре 22 рабочих дня")
} else if selectedMonth == october {
    print("В октябре 23 рабочих дня")
} else if selectedMonth == november {
    print("В ноябре 21 рабочий день")
} else if selectedMonth == december {
    print("В декабре 23 рабочих дня")
} else {
    print("Ошибка")
}
switch selectedMonth {
case january:
    print("В январе 15 рабочих дней")
case february:
    print("В феврале 19 рабочих дней")
case march:
    print("В марте 22 рабочих дня")
case april:
    print("В апреле 22 рабочих дня")
case may:
    print("В мае 22 рабочих дня")
case june:
    print("В июне 21 рабочий день")
case july:
    print("В июле 23 рабочих дня")
case august:
    print("В августе 23 рабочих дня")
case september:
    print("В сентябре 22 рабочих дня")
case october:
    print("В октябре 23 рабочих дня")
case november:
    print("В ноябре 21 рабочий день")
case december:
    print("В декабре 23 рабочих дня")
default:
    print("Ошибка")
}
isHoliday ? print("Это рабочий день") : print("Это выходной день")
// Не получилось разобраться с перечислениями
enum Month {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    var description: String {
        switch self {
        case .january: return "Январь"
        case .february: return "Февраль"
        case .march: return "Март"
        case .april: return "Апрель"
        case .may: return "Май"
        case .june: return "Июнь"
        case .july: return "Июль"
        case .august: return "Август"
        case .september: return "Сентябрь"
        case .october: return "Октябрь"
        case .november: return "Ноябрь"
        case .december: return "Декабрь"
        }
    }
    
}
print(Month.july.description)
