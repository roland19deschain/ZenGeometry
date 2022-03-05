import CoreGraphics

public extension LineSegment {
	
	func intersection(
		with line: LineSegment
	) -> CGPoint? {
		let lhsDenominator: CGFloat = (line.end.y - line.start.y) * (end.x - start.x)
		let rhsDenominator: CGFloat = (line.end.x - line.start.x) * (end.y - start.y)
		var denominator: CGFloat = lhsDenominator - rhsDenominator
		
		let lhsUa: CGFloat = (line.end.x - line.start.x) * (start.y - line.start.y)
		let rhsUa: CGFloat = (line.end.y - line.start.y) * (start.x - line.start.x)
		var ua: CGFloat = lhsUa - rhsUa
		
		let lhsUb: CGFloat = (end.x - start.x) * (start.y - line.start.y)
		let rhsUb: CGFloat = (end.y - start.y) * (start.x - line.start.x)
		var ub: CGFloat = lhsUb - rhsUb
		
		if (denominator < 0) {
			ua = -ua
			ub = -ub
			denominator = -denominator
		}
		guard
			ua >= 0,
			ua <= denominator,
			ub >= 0,
			ub <= denominator,
			denominator != 0
		else {
			return nil
		}
		return CGPoint(
			x: start.x + ua / denominator * (end.x - start.x),
			y: start.y + ua / denominator * (end.y - start.y)
		)
	}
	
}
