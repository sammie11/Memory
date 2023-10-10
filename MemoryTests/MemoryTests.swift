//
//  MemoryTests.swift
//  MemoryTests
//
//  Created by Samuel Gottfarb on 2023-09-22.
//

import XCTest
@testable import Memory

final class MemoryTests: XCTestCase {

	
	func test_change_weight() {
		struct Vector {
			let bmi: Double
			let expectedRisks: Set<Person.Risk>
		}
		func test(vector: Vector){
			let height = 2.0
			let weight = vector.bmi * height * height
			let person = Person(weight: weight, height: height)
			XCTAssertEqual(person.risks, vector.expectedRisks)
			
		}
	

		let vectors: [Vector] = [
			.init(bmi: 25, expectedRisks: []),
			.init(bmi: 34, expectedRisks: []),
			.init(bmi: 35.1, expectedRisks: [.disease(.diabetes)]),
			.init(bmi: 36, expectedRisks: [.disease(.diabetes)]),
			.init(bmi: 40.1, expectedRisks: [.disease(.diabetes), .badEvent(.stroke)]),
			.init(bmi: 41, expectedRisks: [.disease(.diabetes), .badEvent(.stroke)]),
		]
		vectors.forEach(test(vector:))
	}
	
}
