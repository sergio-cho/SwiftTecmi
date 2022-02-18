import UIKit

/*Logical Operator*/
print("9== 9? True")
print("9!=9? False")
print("47>90 False")
print("47<90 True")
print("4<=4 True")

/*If and Ifelse*/
var dollars = 0

dollars = 10

if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else {
    print("You've got some spending money!")
}

dollars = 105

if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else if dollars < 100 {
    print("You've got some spending money!")
} else {
    print("Looks to me like you're rich!")
}

let hasFish = true
let hasPizza = false
let hasVegan = true

if (hasPizza || hasFish) && hasVegan {
    print("Let's go!")
} else {
    print("Sorry, we'll have to think of somewhere else.")
}

let leaguePosition = 1

switch leaguePosition {
case 1:
    print("Champions!")
case 2:
    print("Runners up")
case 3:
    print("Third place")
default:
    print("Bad season!")
}
