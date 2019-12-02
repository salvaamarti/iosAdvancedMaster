/*
 An array A consisting of N integers is given. A triplet (P, Q, R) is triangular if 0 ≤ P < Q < R < N and:
 
 A[P] + A[Q] > A[R],
 A[Q] + A[R] > A[P],
 A[R] + A[P] > A[Q].
 For example, consider array A such that:
 
 A[0] = 10    A[1] = 2    A[2] = 5
 A[3] = 1     A[4] = 8    A[5] = 20
 Triplet (0, 2, 4) is triangular.
 
 Write a function:
 public func solution(_ A : inout [Int]) -> Int
 that, given an array A consisting of N integers, returns 1 if there exists a triangular triplet for this array and returns 0 otherwise.
 
 For example, given array A such that:
 
 A[0] = 10    A[1] = 2    A[2] = 5
 A[3] = 1     A[4] = 8    A[5] = 20
 the function should return 1, as explained above. Given array A such that:
 
 A[0] = 10    A[1] = 50    A[2] = 5
 A[3] = 1
 the function should return 0.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [0..100,000];
 each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
 */
import UIKit
public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count > 2 else { return 0 }
    
    A.sort(by: <)
    
    for i in 0..<(A.count-2) {
        let P : Int = A[i]
        let Q : Int = A[i+1]
        let R : Int = A[i+2]
        
        guard P + Q > R else {continue}
        guard Q + R > P else {continue}
        guard R + P > Q else {continue}
        
        return 1
    }
    return 0
}

var test : [Int] = [2,1,1,2,3,1]

test.sort(by: <)



print(test)

