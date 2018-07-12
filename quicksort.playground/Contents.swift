//: Playground - noun: a place where people can play

import UIKit


func quickSort(arr: inout [Int], start: Int = 0, end: Int = arr.count-1) -> [Int]{
    //base case
    if start >= end{
        return arr
    }
    //small step towards goal
    let pivot = arr[start]
    var i = start
    for j in start+1...end{
        if arr[j] <  pivot{
            i += 1
            arr.swapAt(i, j)
        }
    }
    arr.swapAt(start, i)
    
    //recursive calls
    quickSort(arr: &arr, start:start, end:i-1)
    quickSort(arr: &arr, start: i+1, end: end)
    return arr
}

var arr = [1,5,9,0]
quickSort(arr: &arr)
