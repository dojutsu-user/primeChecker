import Foundation

public class PrimeUtils {
    /// Checks if a number is prime.
    /// - Parameter n: The number to check.
    /// - Returns: `true` if the number is prime, `false` otherwise.
    public static func isPrime(_ n: Int) -> Bool {
        if n < 2 {
            return false
        }
        
        let m = n / 2
        var flag = false
        
        for i in 2...m {
            if n % i == 0 {
                flag = true
                break
            }
        }
        return !flag
    }
}
