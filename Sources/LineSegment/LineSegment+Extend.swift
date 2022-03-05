import CoreGraphics

public extension LineSegment {
	
	func extended(
		by distance: CGFloat
	) -> LineSegment {
		let length = self.length
		let newEnd = CGPoint(
			x: end.x + (end.x - start.x) / length * distance,
			y: end.y + (end.y - start.y) / length * distance
		)
		return LineSegment(
			start: start,
			end: newEnd
		)
	}
	
}
