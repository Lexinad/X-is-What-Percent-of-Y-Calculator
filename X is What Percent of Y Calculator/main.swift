//
//  main.swift
//  X is What Percent of Y Calculator
//
//  Created by Daniel Gutierrez on 4/29/17.
//  Copyright © 2017 Daniel Gutierrez. All rights reserved.
//
// This program is a CLI utility that answers questions of the form "X is what percent of Y?"
// where X and Y are real numbers

/// Errorhandling for X is What Percent of Y Calculator
///
/// - invalidX: thrown if x isn't a real number
/// - invalidY: thrown if y isn't a real number
enum XYPercentError: Error {
    case invalidX
    case invalidY
}


/// Given two numbers x and y, answers "x is what percent of y?"
/// by printing to the screen "x is ans% of y" where ans = 100 * x / y
/// - Throws: `XYPercentError.invalidX` if x isn't a real number or
/// `XYPercentError.invalidY` if y isn't a real number
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
    print("Usage: xyPercentCalc <x> <y>")
} else {
    do {
        try calcAns()
    } catch XYPercentError.invalidX {
        print("Error: x must be a real number")
    } catch XYPercentError.invalidY {
        print("Error: y must be a real number")
    }

}
