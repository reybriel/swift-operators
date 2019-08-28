import Foundation

extension Int8 {
    static postfix func ++ (number: inout Int8) -> Int8 {
        defer { number += 1 }
        return number
    }
    static prefix func ++ (number: inout Int8) -> Int8 {
        number += 1
        return number
    }
}

func cLikeIncrementOperator() {
    var outputs: String = .init()
    var a: Int8 = 0
    outputs.append("C LIKE INCREMENT OPERATOR\n")
    outputs.append("var a = 0\n")
    outputs.append("a => \(a)\n")
    var b: Int8 = a++
    outputs.append("var b = a++\n")
    outputs.append("a => \(a)\n")
    outputs.append("b => \(b)\n")
    let c: Int8 = ++b
    outputs.append("let c = ++b\n")
    outputs.append("a => \(a)\n")
    outputs.append("b => \(b)\n")
    outputs.append("c => \(c)\n")
    print(outputs)
}
