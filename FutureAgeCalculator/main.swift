import Foundation

struct FuturePerson {
    let name: String
    let birthYear: Int
}

func ageInYear(birthYear: Int, targetYear: Int) -> Int {
    targetYear - birthYear
}

func joke(for age: Int) -> String {
    switch age {
    case ..<0:
        return "Plot twist: you are from the future. Please bring lottery numbers."
    case 0..<18:
        return "You are still in tutorial mode."
    case 18..<30:
        return "You are young enough to recover from bad decisions quickly."
    case 30..<60:
        return "You now own at least one item that was purchased for practicality."
    case 60..<100:
        return "You have unlocked premium life experience."
    default:
        return "You are basically a historical artifact with excellent Wi-Fi."
    }
}

func year3000Line(age: Int) -> String {
    if age >= 1000 {
        return "By the year 3000, you will be so legendary that archaeology will need a permit."
    } else {
        return "By the year 3000, you will still be impressively ancient by human standards."
    }
}

let demoPerson = FuturePerson(name: "Future Human", birthYear: 2003)
let currentYear = Calendar.current.component(.year, from: Date())

let currentAge = ageInYear(birthYear: demoPerson.birthYear, targetYear: currentYear)
let age2050 = ageInYear(birthYear: demoPerson.birthYear, targetYear: 2050)
let age2100 = ageInYear(birthYear: demoPerson.birthYear, targetYear: 2100)
let age3000 = ageInYear(birthYear: demoPerson.birthYear, targetYear: 3000)
let yearsUntil100 = 100 - currentAge

print("=== Future Age Calculator: Comedy Edition ===")
print("Auto mode enabled. No typing required.\n")

print("Name: \(demoPerson.name)")
print("Birth year: \(demoPerson.birthYear)")
print("Current year: \(currentYear)\n")

print("Current age: \(currentAge)")
print("Age in 2050: \(age2050)")
print("Age in 2100: \(age2100)")
print("Age in 3000: \(age3000)\n")

print("Joke of the day: \(joke(for: currentAge))")

if yearsUntil100 > 0 {
    print("Years until 100: \(yearsUntil100)")
} else if yearsUntil100 == 0 {
    print("You are exactly 100. Cake delivery is required.")
} else {
    print("You are already over 100. Respectfully, wow.")
}

print(year3000Line(age: age3000))
