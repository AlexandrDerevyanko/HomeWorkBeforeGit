protocol Human {
    var age: Int { get set }
    var weight: Int { get set }
    var name: String { get set}
    func contraindications() -> Bool
}

class HumanWithoutContraindications: Human {
    var age: Int
    var weight: Int
    var name: String
    
    func contraindications() -> Bool {
        return Bool.random()
    }
    
    init (age: Int, weight: Int, name: String) {
        self.age = age
        self.weight = weight
        self.name = name
    }
    
}

struct Point {
    var x: Int
    var y: Int
}
struct Line {
    var p1: Point
    var p2: Point
}

enum ColorName: String {
    case Purple, White, Black, Silver, Maroon
}
