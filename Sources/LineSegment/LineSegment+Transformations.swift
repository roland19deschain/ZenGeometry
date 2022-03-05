import CoreGraphics

public extension LineSegment {
	
	var vector: CGVector {
		CGVector(
			dx: end.x - start.x,
			dy: end.y - start.y
		)
	}
	
}
