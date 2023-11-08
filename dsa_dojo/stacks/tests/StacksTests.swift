//
//  dsa_dojo.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/6/23.
//

import XCTest

final class StacksTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidates() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let stack_t: Bool = Stacks.validate(d: "(([]){a()}())()")
        XCTAssertTrue(stack_t)
        var stack_f = Stacks.validate(d: "(()()())(]")
        XCTAssertFalse(stack_f)
        stack_f = Stacks.validate(d: "([}()()())()")
        XCTAssertFalse(stack_f)
    }
    
    func testValidatesHTML() throws {
        // simple
        var html = "<p>test</p>"
        var stack_t: Bool = Stacks.validateHTML(d: html)
        XCTAssertTrue(stack_t)
        // nested
        html = """
            <section>
                <p>test</p>
            </section>
            """
        stack_t = Stacks.validateHTML(d: html)
        XCTAssertTrue(stack_t)
        // tag elements
        html = """
            <section id="test">
                <p>test</p>
            </section>
            """
        stack_t = Stacks.validateHTML(d: html)
        XCTAssertTrue(stack_t)
        // unclosed tag
        html = """
            <section id="test">
            <div>
                <p>test</p>
            </section>
            """
        var stack_f = Stacks.validateHTML(d: html)
        XCTAssertFalse(stack_f)
        // misplaced closing tag
        html = """
            <section id="test">
                <p>test</p>
            </section>
                        </div>
            """
        stack_f = Stacks.validateHTML(d: html)
        XCTAssertFalse(stack_f)
        // not enough closing tags
        html = """
            <section id="test">
                <p>test</p>
            </section>
            <div>
            """
        stack_f = Stacks.validateHTML(d: html)
        XCTAssertFalse(stack_f)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
