//: [Previous](@previous)

import Foundation

//There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.
//
//You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point. ponits:[-5,1,5,0,-7]
//solution : we have to take two points max and current ,at initial point he will be at 0 so max = 0 and current = 0,next phase he will travel -5 ,so current = 0 - 5,now current = -5 and max = 0,next step he will move to 1 then  current = 0-5+1 = -4 and max = 0,next step he will move to r then  current = 0-5+1-4+5 = 1 and max = 1 after that he will move same way then what ever final max value that will be the answer.

func findTheHighestAltitude(_ num:[Int]) -> Int{
    var maxValue = 0;
    var current = 0;
    for i in num{
        current += i
        maxValue = max(maxValue, current)
    }
    return maxValue
}
findTheHighestAltitude([-5,1,5,0,-7])
findTheHighestAltitude([0,-4,-7,-9,-10,-6,-3,-1])
