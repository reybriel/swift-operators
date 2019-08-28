import Foundation

func overflowOperators() {
    var outputs: String = .init()
    outputs.append("OVERFLOW OPERATORS\n")
    outputs.append("MAX INT 8 => \(Int8.max)\n")
    outputs.append("MIN INT 8 => \(Int8.min)\n")
    outputs.append("MIN INT 8 MINUS 1 => \(Int8.min &- 1)\n")
    outputs.append("MAX INT 8 PLUS 1 => \(Int8.max &+ 1)\n")
    outputs.append("MAX INT 8 TIMES 2 => \(Int8.max &* 2)\n")
    print(outputs)
}
