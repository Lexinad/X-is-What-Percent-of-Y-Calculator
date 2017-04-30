//
//  main.swift
//  X is What Percent of Y Calculator
//
//  Created by Daniel Gutierrez on 4/29/17.
//  Copyright © 2017 Daniel Gutierrez. All rights reserved.
//

enum XYPercentError: Error {
    case invalidX
    case invalidY
}


func calcAns() throws -> Void {
    guard let x = Double(CommandLine.arguments[1]) else {
        throw XYPercentError.invalidX
    }
    guard let y = Double(CommandLine.arguments[2]) else {
        throw XYPercentError.invalidY
    }
    let ans = 100 * x / y
    print("\(x) is \(ans)% of \(y)")
}


if CommandLine.arguments.count != 3 {
    print("Usage: ./xyPercentCalc <x> <y>")
} else {
    do {
        try calcAns()
    } catch XYPercentError.invalidX {
        print("Error: Invalid x")
    } catch XYPercentError.invalidY {
        print("Error: Invalid y")
    }

}
