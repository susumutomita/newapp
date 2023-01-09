//
//  y_serviceTests.swift
//  ground-list-upTests
//
//  Created by susumu tomita on 2023/01/05.
//

import XCTest
@testable import ground_list_up

final class y_serviceTests: XCTestCase {

    var y_service: Y_service!
    
    override func setUp() {
         // テストを実行する前の初期化処理
        y_service = Y_service()
     }

     override func tearDown() {
         // テストを実行した後のクリーンアップ処理
         y_service = nil
     }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        y_service?.open()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
