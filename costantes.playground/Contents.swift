import UIKit

var str = "Hello, playground"

/* 1-Friends*/
let myfriends = 500
print("I have:",myfriends,"friends in my Facebook")

/* 2-Delete friends */
var inactive = 200
var update = myfriends-inactive
print("Now i have:",update,"friens in my Facebook")

/* 3-Age*/
let age = 19
print("My age is:",age,"years old")

/*4-Birthday*/
var hb = 1
var Bupdate = age + hb
print("I forgot today is my birthday , now i have",Bupdate,"years old")

/*5-Double*/
let origin : Double = 1.1
var N1 : Double = origin + origin
var N2 : Double = N1 + origin
var N3 : Double = N2 + origin
print(origin)
print(N1)
print(N2)
print("The new value is:",N3)

/*6-Boolean*/
var T = true
print("This variable is:",T)
T = false
print("Now this variable is:",T)

/*7-Value*/
var enteroimplicito :Double = 0
let doubleimplicito = 0.0
enteroimplicito = doubleimplicito
print(enteroimplicito)

/*8-interger */
var number : Int = 100000000
print(number)
