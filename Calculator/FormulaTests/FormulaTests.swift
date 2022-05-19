//
//  FormulaTests.swift
//  FormulaTests
//
//  Created by NAMU on 2022/05/19.
//

import XCTest
@testable import Calculator

class FormulaTests: XCTestCase {
    var sut: Formula!
    
    override func setUpWithError() throws {
       try super.setUpWithError()
        sut = Formula()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_result_값이_정상일때_더하기_연산결과를_출력하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        sut.operands.enqueue(data: 2.0)
        sut.operands.enqueue(data: 3.0)
        
        sut.operators.enqueue(data: "+")
        sut.operators.enqueue(data: "+")
        
        // when
        let result = 6.0
        
        XCTAssertEqual(result, try sut.result())
    }
    
    func test_result_값이_정상일때_빼기_연산결과를_출력하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        sut.operands.enqueue(data: 2.0)
        sut.operands.enqueue(data: 3.0)
        
        sut.operators.enqueue(data: "-")
        sut.operators.enqueue(data: "+")
        
        // when
        let result = 2.0
        
        XCTAssertEqual(result, try sut.result())
    }
    
    func test_result_값이_정상일때_곱하기_연산결과를_출력하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        sut.operands.enqueue(data: 2.0)
        sut.operands.enqueue(data: 3.0)
        
        sut.operators.enqueue(data: "×")
        sut.operators.enqueue(data: "+")
        
        // when
        let result = 5.0
        
        XCTAssertEqual(result, try sut.result())
    }
    
    func test_result_값이_나누기_연산결과를_출력하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        sut.operands.enqueue(data: 2.0)
        sut.operands.enqueue(data: 1.0)
        
        sut.operators.enqueue(data: "+")
        sut.operators.enqueue(data: "÷")
        
        // when
        let result = 3.0
        
        XCTAssertEqual(result, try sut.result())
    }
    
    func test_result_0으로나눴을때_무한대를_출력하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        sut.operands.enqueue(data: 2.0)
        sut.operands.enqueue(data: 0.0)
        
        sut.operators.enqueue(data: "+")
        sut.operators.enqueue(data: "÷")
        
        // when
        let result = Double.infinity
        
        XCTAssertEqual(result, try sut.result())
    }
    
    func test_result_숫자가_1개들어오면_제대로반환하는지() {
        // given
        sut.operands.enqueue(data: 1.0)
        
        // when
        let result = 1.0
        
        // then
        XCTAssertEqual(result, try sut.result())
    }
}
