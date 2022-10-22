//Задача №1
var iLike: (String, Int, String) = ("Forrest Gump", 1, "Tiramisu")
let (favoriteMovie, favoriteNumber, favoriteDish) = iLike

var youLike: (String, Int, String) = ("The Shawshank Redemption", 8, "Pasta Carbonara")
let (youFavoriteMovie, youFavoriteNumber, youFavoriteDish) = youLike

var weLike = iLike
iLike = youLike
youLike = weLike

var numbersLike = (iLike.1, youLike.1, (iLike.1 - youLike.1))

print(numbersLike)
print("********************")

//Задача №2
var alexScore = ["Biology" : 4, "Physics" : 5, "Chemistry" : 4]
var elDiary = ["Alexandr" : alexScore]

print(elDiary)
print("********************")

//Задача №3
typealias Chessman = [String: (alpha: Character, num: Int)?]

var Chessmans: Chessman = ["Bishop": (alpha: "A", num: 5), "Knight": (alpha: "B", num: 3), "Pawns": nil]

if let info = Chessmans["Bishop"] {
    if info != nil {
        print("Shape coordinates" , ":", (info)!)
    } else {
        print("Figure is not on table")
    }
    }
print("********************")

//Задача 4
for i in Chessmans {
    if i.value == nil {
        print("Figure \(i.key) is not on table")
    } else {
        print(i.key, "coordinates" , ":", i.value!)
    }
}
