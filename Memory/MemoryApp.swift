//
//  MemoryApp.swift
//  Memory
//
//  Created by Samuel Gottfarb on 2023-09-22.
//

import SwiftUI

@main
struct MemoryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct Person {
	
	var weight: Double {
		didSet {
			updateRisks()
		}
	}
	
	private mutating func updateRisks() {
		if bmi > 35 {
			risks.insert(.disease(.diabetes))
		}
		if bmi > 40 {
			risks.insert(.badEvent(.stroke))
		}
		print("updated risks")
	}
	
	let height: Double
	enum Risk: Hashable {
		enum Disease: Hashable {
			case diabetes
		}
		enum BadEvent: Hashable {
			case stroke
		}
		case disease(Disease)
		case badEvent(BadEvent)
	}
	var risks: Set<Risk>
	init(weight: Double, height: Double, risks: Set<Risk> = []) {
		self.weight = weight
		self.height = height
		self.risks = risks
		updateRisks()
	}
	var bmi: Double {
		weight / (height * height)
	}
}


public struct Statistics {
	public let min: Int
	public let max: Int
	public let sum: Int
}

func calculateStatistics1211(scores: [Int]) -> (min: Int, max: Int, sum: Int)? {
	if scores.isEmpty { 
//		return nil
	}
	var min = scores[0]
	//...
	fatalError()
}

func calculateStatistics432423(scores: [Int]) -> (min: Int, max: Int, sum: Int)? {
	if !scores.isEmpty {
		var min = scores[0]
		var max = scores[0]
		var sum = 0
		
		for score in scores {
			if score > max {
				max = score
			} else if score < min {
				min = score
			}
			sum += score
		}


		return (min, max, sum)
	} else {
		return nil
	}
}



///
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int)? {
//	guard !scores.isEmpty else {
//		return nil
//	}
	guard let first = scores.first else { return nil }
	
	var min = first
	var max = first
	var sum = 0
	
	for score in scores {
		if score > max {
			max = score
		} else if score < min {
			min = score
		}
		sum += score
	}


	return (min, max, sum)
}

func test() {
	calculateStatistics(scores: [])
	
	var ints = [5, 3, 100, 3, 9]
	var firstint = ints.first
	ints.insert(7, at: 0)
	firstint = 1337
	
}

func calculateStatistics2(scores: [Int]) -> Statistics {
	fatalError()
}
