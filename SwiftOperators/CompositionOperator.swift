import Foundation

precedencegroup ClosureCompositionPrecedence { associativity: left }
infix operator >>>: ClosureCompositionPrecedence

func >>> <A, B, C>(_ lhs: @escaping (A) -> B, _ rhs: @escaping (B) -> C) -> (A) -> C {
    return { rhs(lhs($0)) }
}

func square(_ x: Int) -> Int {
    return x * x
}

func increment(_ x: Int) -> Int {
    return x + 1
}

func half(_ x: Int) -> Int {
    return x / 2
}

func describe(_ x: Int) -> String {
    return "The value of 'x' is: \(x)"
}

func compositionOperator() {
    print("COMPOSITION OPERATOR")
    let describeHalfOfIncrementedSquare = square >>> increment >>> half >>> describe
    print(describeHalfOfIncrementedSquare(3)) // print(((3 ^ 2) + 1) / 2)
}
