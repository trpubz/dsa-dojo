//
//  PriorityQueueTest.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/9/23.
//

import XCTest

final class PriorityQueueTest: XCTestCase {
    var q: PriorityQueue!
    let p1 = Plane(name: "SW333", expectedDeparture: 616, expectedArrival: 716)
    let p2 = Plane(name: "UA316", expectedDeparture: 716, expectedArrival: 916)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        q = PriorityQueue()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_enqueue() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        XCTAssertNil(q.queue[1])
        q.enqueue(priority: 1, p: p1)
        q.enqueue(priority: 1, p: p2)
        XCTAssertEqual(q.queue[1]?.count, 2)
    }
    
    func test_next() throws {
        XCTAssertNil(q.next())
        q.enqueue(priority: 1, p: p1)
        q.enqueue(priority: 1, p: p2)
        XCTAssertEqual(q.next(), p1)
    }
    
    func test_empty() throws {
        XCTAssertTrue(q.empty())
        q.enqueue(priority: 1, p: p1)
        XCTAssertFalse(q.empty())
    }
    
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
