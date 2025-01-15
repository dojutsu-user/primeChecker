import XCTest
import Testing
@testable import primeChecker

class PrimeUtilsTests: XCTestCase {

    func testPrime() {
        XCTAssertTrue(PrimeUtils.isPrime(13))
    }
    
    func testNotPrime() {
        XCTAssertFalse(PrimeUtils.isPrime(65))
    }
    
    func testNotPrime1() {
        XCTAssertFalse(PrimeUtils.isPrime(1))
    }
    
    func testNotPrime0() {
        XCTAssertFalse(PrimeUtils.isPrime(0))
    }
    
    func testNotPrimeNeg() {
        XCTAssertFalse(PrimeUtils.isPrime(-5))
    }
}
