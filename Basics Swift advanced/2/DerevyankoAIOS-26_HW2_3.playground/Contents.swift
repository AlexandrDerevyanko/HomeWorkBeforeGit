// Задача 1
func fuelCalculation(weight: Double, disrance: Double, closure: (Double, Double) -> Double) {
    closure(weight, disrance)
}

let fuelCalculation1 = {
    (weight: Double, disrance: Double) -> Double in
    let result = (disrance / weight) / 5
    print(result)
    return result
}
let fuelCalculation2 = {
    (weight: Double, disrance: Double) -> Double in
    let result = (disrance / weight) * 0.2
    print(result)
    return result
}

fuelCalculation(weight: 91, disrance: 670900, closure: fuelCalculation1)
fuelCalculation(weight: 91, disrance: 670900, closure: fuelCalculation2)

// Задача 2

typealias Closure = (Double, Double) -> Double

func fuelCalculation2(weight: Double, disrance: Double, closure: (Double, Double) -> Double) {
    print(closure(weight, disrance))
    
}

let fuelCalculation3: Closure = {
    Double($1 / $0) / 5
}
let fuelCalculation4: Closure = {
    Double($1 / $0) * 0.2
}

fuelCalculation2(weight: 91, disrance: 670900, closure: fuelCalculation3)
fuelCalculation2(weight: 91, disrance: 670900, closure: fuelCalculation4)
