import UIKit

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

func sumofTwoNumber(_ nums:[Int],_ target:Int)->[Int]{
    var dict = [Int:Int]()
    for (index,value) in nums.enumerated() {
        if let oneIndex = dict[target - value], oneIndex != index {
            return [oneIndex,index]
        }
        
        dict[value] = index
    }
    return[]
}
sumofTwoNumber([0, 1, 2, 3, 4, 5, 6, 7, 8], 9)

