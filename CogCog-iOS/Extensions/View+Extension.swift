//
//  View+Extension.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

extension View {
	func dragGesture(tolerance: Double = 24, direction: DragGesture.Value.Direction, actionOnEnded: @escaping () -> ()) -> some View {
		simultaneousGesture(DragGesture()
			.onEnded { value in
				let swipeDirection = value.detectDirection(tolerance)
				if swipeDirection == direction {
					actionOnEnded()
				}
			}
		)
	}
}

extension DragGesture.Value {
	func detectDirection(_ tolerance: Double = 24) -> Direction? {
		if startLocation.x < location.x - tolerance { return .left }
		if startLocation.x > location.x + tolerance { return .right }
		if startLocation.y > location.y + tolerance { return .up }
		if startLocation.y < location.y - tolerance { return .down }
		return nil
	}
	
	enum Direction {
		case left
		case right
		case up
		case down
	}
}
