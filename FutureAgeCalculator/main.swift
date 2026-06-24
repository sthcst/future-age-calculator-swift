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
let currentYear = Calendar.current.component(.year, from: Date())
let currentAge = ageInYear(birthYear: birthYear, targetYear: currentYear)
let age2050 = ageInYear(birthYear: birthYear, targetYear: 2050)
let age2100 = ageInYear(birthYear: birthYear, targetYear: 2100)
let age3000 = ageInYear(birthYear: birthYear, targetYear: 3000)

let yearsUntil100 = 100 - currentAge
if yearsUntil100 > 0 {
    print("You will turn 100 in \(yearsUntil100) years.")
} else {
    print("You are already over 100 years old!")
}
if age3000 >= 1000 {
    print("Wow! You would be over 1,000 years old in the year 3000.")
} else {
    print("You would not reach 1,000 years old by the year 3000.")
}
