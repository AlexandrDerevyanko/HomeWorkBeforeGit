//Задача №1
var namesBoy: [String] = ["Alexandr", "Petr"]
var namesGirl: [String] = ["Maria", "Svetlana", "Meerin"]
var students = namesGirl

for i in namesBoy {
    students.insert(i, at: students.startIndex)
}
print(students)

//Задача №2
let sortedStudents = students.sorted()
print(sortedStudents)
//либо
students.sort()
print(students)

//Задача №3
var A: [Int] = [10, 20, 1000, -100, -2000, 5000, 300]
A.sort(by: {$0 < $1})
let B = A.filter( { $0 > 0 } ) // Можем ли мы отфильтровать массив A не вводя новую переменную?
print(B)
