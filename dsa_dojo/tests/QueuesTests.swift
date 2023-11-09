//
//  QueuesTests.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/8/23.
//

import XCTest

final class QueuesTests: XCTestCase {
    var q: Queue!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        q = Queue()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_enqueue() throws {
        q.enqueue(d: "Hello")
        q.enqueue(d: "World")
        let stringQueue = q.queue.compactMap { $0 as? String }
        XCTAssertEqual(stringQueue, ["Hello", "World"])
    }
    
    func test_empty() throws {
        XCTAssertTrue(q.empty())
    }
    
    func test_dequeue() throws {
        XCTAssertNil(q.dequeue())
        q.enqueue(d: "Hello")
        q.enqueue(d: "World")
        XCTAssertEqual(q.dequeue() as? String, "Hello")
    }
    
    func test_count() throws {
        q.enqueue(d: "Hello")
        q.enqueue(d: "World")
        XCTAssertEqual(q.count(), 2)
    }
    
    func test_peek() throws {
        XCTAssertNil(q.peek())
        q.enqueue(d: "Hello")
        q.enqueue(d: "World")
        XCTAssertEqual(q.peek() as? String, "Hello")
        XCTAssertEqual(q.count(), 2)
    }
    
    func test_last() throws {
        XCTAssertNil(q.last())
        q.enqueue(d: "Hello")
        q.enqueue(d: "World")
        XCTAssertEqual(q.last() as? String, "World")
        XCTAssertEqual(q.count(), 2)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
