
import Foundation

//Longest Substring Without Repeating Characters
//Given a string s, find the length of the longest
//substring
// without repeating characters.
//Input: s = "abcabcbb"
//Output: 3
//Explanation: The answer is "abc", with the length of 3.
//Input: s = "bbbbb"
//Output: 1
//Explanation: The answer is "b", with the length of 1.


func lengthOfSybString(_ stringObj:String) -> Int{
    // create a dict
    var stringDict = [Character:Int]()
    var maxLenght = 0
    var startIndex = 0
    for(index, car) in stringObj.enumerated(){
        //if the character is already present in dict or if it is present then move the start index to max value if not add it dict
        if let oldIndex = stringDict[car]{
           stringDict[car] = index
            //if char is already present in the dict then move start index by 1 i.e oldIndex + 1 
            startIndex = max(oldIndex + 1, startIndex)
        }else{
            stringDict[car] = index
        }
        //find out the max value i.e currentIndex - startIndex + 1 ,prev max lenght
        maxLenght = max(index - startIndex + 1, maxLenght)
    }
    return maxLenght
}

lengthOfSybString("bacabcabcbb")
lengthOfSybString("pwwkew")
lengthOfSybString("bbbbbbb")
