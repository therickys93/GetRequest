import XCTest
@testable import GetRequest

class GetRequestTests: XCTestCase {

    func testContructor() {
        let _ = GetRequest()
    }

    func testResponseCode() {
        let request = GetRequest()
        let response = request.fetch("http://emergency-phone-numbers.herokuapp.com/country/it")
        XCTAssertEqual(response.code, "200", "Incorrect response code")
    }

    func testResponseBody() {
        let request = GetRequest()
        let response = request.fetch("http://emergency-phone-numbers.herokuapp.com/country/it")
        XCTAssertEqual(response.body, "{\"code\":\"IT\",\"fire\":\"115\",\"police\":\"113\",\"name\":\"Italy\",\"medical\":\"118\"}", "Incorrect response body")
    }

    static var allTests : [(String, (GetRequestTests) -> () throws -> Void)] {
        return [
            ("testContructor", testContructor),
            ("testResponseCode", testResponseCode),
            ("testResponseBody", testResponseBody),
        ]
    }
}
