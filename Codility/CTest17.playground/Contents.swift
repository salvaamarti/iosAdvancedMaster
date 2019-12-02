/*
 Write a function
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given an array A consisting of N integers, returns the number of distinct values in array A.
 
 For example, given array A consisting of six elements such that:
 
 A[0] = 2    A[1] = 1    A[2] = 1
 A[3] = 2    A[4] = 3    A[5] = 1
 the function should return 3, because there are 3 distinct values appearing in array A, namely 1, 2 and 3.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [0..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 */
import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count != 0 else {return 0}
    guard A.count > 1 else {return 1}
    
    var set : Set<Int> = Set<Int>()
    
    for i in 0..<A.count {
        if !set.contains(A[i]) {
            set.insert(A[i])
        }
    }
    return set.count
}

var vector : [Int] = [2,1,1,2,3,1]
print(solution(&vector))
//100%
