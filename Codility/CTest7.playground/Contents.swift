/*
 This is a demo task.
 
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
 
 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 
 Given A = [1, 2, 3], the function should return 4.
 
 Given A = [−1, −3], the function should return 1.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 */
import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A = A.sorted(by: <)
    A = A.filter({ (i) -> Bool in
        i >= 0
    })
    guard A.count > 0 else {return 1}
    guard A.count > 1 else{
        guard A[0] > 0 else {return 1}
        guard A[0] > 1 else {return A[0]+1}
        return 1
    }
    guard A[0] <= 1 else {return 1}
    
    for i in 0..<(A.count-1) {
        if A[i+1] - A[i] > 1 {
            return A[i] + 1
        }
    }
    return A[A.count-1] + 1
}
