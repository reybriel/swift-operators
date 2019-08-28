import Foundation

func binaryOperators() {
    var outputs: String = .init()
    let bits0: UInt8 = 0b00000001
    let bits1: UInt8 = 0b10000000
    outputs.append("BINARY OPERATORS\n")
    outputs.append("NOT \(bits0) => \(~bits0)\n")
    outputs.append("\(bits0) AND \(bits1) => \(bits0 & bits1)\n")
    outputs.append("\(bits0) OR \(bits1) => \(bits0 | bits1)\n")
    outputs.append("\(bits0) XOR \(bits1) => \(bits0 ^ bits1)\n")
    outputs.append("MOVE 2 BITS LEFT \(bits0) => \(bits0 << 2)\n")
    outputs.append("MOVE 5 BITS RIGHT \(bits1) => \(bits1 >> 5)\n")
    print(outputs)
}
