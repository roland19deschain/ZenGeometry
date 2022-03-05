import CoreGraphics

public extension LineSegment {
	
	var midpoint: CGPoint {
		CGPoint(
			x: (end.x + start.x) / 2,
			y: (end.y + start.y) / 2
		)
	}
	
	var length: CGFloat {
		sqrt(
			pow(end.x - start.x, 2) + pow(end.y - start.y, 2)
		)
	}
	
	func angle(to line: LineSegment) -> CGFloat {
		let a = vector
		let b = line.vector
		return (atan2(b.dy, b.dx) - atan2(a.dy, a.dx))
	}
	
	
	func split(by ratio: CGFloat) -> CGPoint {
		CGPoint(
			x: start.x + (end.x - start.x) * ratio,
			y: start.y + (end.y - start.y) * ratio
		)
	}
	
}
