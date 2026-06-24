//
//  main.swift
//  FutureAgeCalculator
//
//  Created by Seth Acosta on 6/24/26.
//

import Foundation

print("Hello, World!")

func ageInYear(birthYear: Int, targetYear: Int) -> Int {
    return targetYear - birthYear
}

print("=== Future Age Calculator ===")

print("Enter your name:")

let name = readLine() ?? "Unknown"

print("Enter your birth year:")

let birthYear = Int(readLine() ?? "") ?? 2000
