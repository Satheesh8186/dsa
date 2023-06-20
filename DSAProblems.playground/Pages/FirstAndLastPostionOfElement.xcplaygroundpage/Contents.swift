import Foundation
//Find First and Last Position of Element in Sorted Array
//Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
//
//If target is not found in the array, return [-1, -1].
//
//You must write an algorithm with O(log n) runtime complexity.

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
       var ans: [Int] = [-1, -1]

       for i in 0..<nums.count{
           if nums[i] == target{
               if ans[0] == -1 { ans[0] = i }
               ans[1] = i
           }
       }

       return ans
   }
searchRange([5,7,8,7,8,8,8,10,5,7,8,7,8,8,8,10,5,7,8,7,8,8,8,10,5,7,8,7,8,8,8,10], 6)

