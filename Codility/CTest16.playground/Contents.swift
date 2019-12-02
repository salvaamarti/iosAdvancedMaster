/*
 A non-empty array A consisting of N integers is given. The product of triplet (P, Q, R) equates to A[P] * A[Q] * A[R] (0 ≤ P < Q < R < N).
 
 For example, array A such that:
 
 A[0] = -3
 A[1] = 1
 A[2] = 2
 A[3] = -2
 A[4] = 5
 A[5] = 6
 contains the following example triplets:
 
 (0, 1, 2), product is −3 * 1 * 2 = −6
 (1, 2, 4), product is 1 * 2 * 5 = 10
 (2, 4, 5), product is 2 * 5 * 6 = 60
 Your goal is to find the maximal product of any triplet.
 
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given a non-empty array A, returns the value of the maximal product of any triplet.
 
 For example, given array A such that:
 
 A[0] = -3
 A[1] = 1
 A[2] = 2
 A[3] = -2
 A[4] = 5
 A[5] = 6
 the function should return 60, as the product of triplet (2, 4, 5) is maximal.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [3..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 */
import UIKit
public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count > 3  else {return A.reduce(1, *)}

    var negativos : [Int] = A.filter { (value) -> Bool in
        value < 0
    }
    negativos.sort(by: <)
    A.sort(by: <)
    
    var maxNegativos : Int = 1
    if negativos.count > 1 {
        maxNegativos *= negativos[0...1].reduce(1,*)
    }
    
    let result : Int = A[A.count-3..<A.count].reduce(1, *)
    
    if result < maxNegativos * A.last! {
        return maxNegativos * A.last!
    }
    else {
        return result
    }
}
var a : [Int] = [-4, -6, 3, 4, 5]
print(solution(&a))
//OK: 100%
