/*
 Задача №1
 */

let vkData = "19067"
let fbData = "13400"
let instData = "_10045"
let youTubeData = "10$0d00"
let webSiteData = "I0I12"
/*
 optional binding
 */
var a:Int = 0

if let x = Int(vkData) {
    a += x
} else {
    a += 0
}
if let x = Int(fbData) {
    a += x
} else {
    a += 0
}
if let x = Int(instData) {
    a += x
} else {
    a += 0
}
if let x = Int(youTubeData) {
    a += x
} else {
    a += 0
}
if let x = Int(webSiteData) {
    a += x
} else {
    a += 0
}
print(a)
/*
 nil-coalescing
 */
var b:Int = 0

let b1 = Int(vkData) ?? 0
let b2 = Int(fbData) ?? 0
let b3 = Int(instData) ?? 0
let b4 = Int(youTubeData) ?? 0
let b5 = Int(webSiteData) ?? 0
b = b1 + b2 + b3 + b4 + b5
print(b)
/*
 forced unwrapping
 */
var c:Int = 0
if Int(vkData) != nil {
    c += Int(vkData)!
} else {
    c += 0
}
if Int(fbData) != nil {
    c += Int(fbData)!
} else {
    c += 0
}
if Int(instData) != nil {
    c += Int(instData)!
} else {
    c += 0
}
if Int(youTubeData) != nil {
    c += Int(youTubeData)!
} else {
    c += 0
}
if Int(webSiteData) != nil {
    c += Int(webSiteData)!
} else {
    c += 0
}
print(c)
/*
 Задача №2
 */
var isConfirm:Bool = true

if let value = Int(vkData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму", value)
    } else {
        print("Платеж отменен")
    }
} else {
    print("Упс… Нам жаль, что-то пошло не так, попробуйте позже")
}

if let value = Int(fbData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму", value)
    } else {
        print("Платеж отменен")
    }
} else {
    print("Упс… Нам жаль, что-то пошло не так, попробуйте позже")
}

if let value = Int(instData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму", value)
    } else {
        print("Платеж отменен")
    }
} else {
    print("Упс… Нам жаль, что-то пошло не так, попробуйте позже")
}

if let value = Int(youTubeData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму", value)
    } else {
        print("Платеж отменен")
    }
} else {
    print("Упс… Нам жаль, что-то пошло не так, попробуйте позже")
}

if let value = Int(webSiteData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму", value)
    } else {
        print("Платеж отменен")
    }
} else {
    print("Упс… Нам жаль, что-то пошло не так, попробуйте позже")
}
