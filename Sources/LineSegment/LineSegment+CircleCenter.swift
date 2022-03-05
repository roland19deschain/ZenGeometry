import CoreGraphics

public extension LineSegment {
	
	func inCircleCenter(
		to line: LineSegment,
		cornerRadius: CGFloat
	) -> CGPoint? {
		guard let CA = intersection(with: line) else {
			return nil
		}
		let a: CGFloat = cornerRadius * tan(vector.angle(to: line.vector) / 2)
		let AB0: CGPoint = line.split(by: a / line.length)
		let AB1: CGPoint = split(by: 1 - a / length)
		var BC: CGPoint = CA
		let cw = [start, line.start, line.end].circularMotionDirection
		switch (AB1.x > AB0.x, AB1.y > AB0.y) {
		case (true, true), (false, false):
			if cw == .clockwise {
				BC = CGPoint(
					x: AB0.x + (CA.y - AB0.y) / a * cornerRadius,
					y: AB0.y - (CA.x - AB0.x) / a * cornerRadius
				)
			} else {
				BC = CGPoint(
					x: AB1.x + (CA.y - AB1.y) / a * cornerRadius,
					y: AB1.y - (CA.x - AB1.x) / a * cornerRadius
				)
			}
		case (true, false), (false, true):
			if cw == .clockwise {
				BC = CGPoint(
					x: AB0.x + (CA.y - AB0.y) / a * cornerRadius,
					y: AB0.y - (CA.x - AB0.x) / a * cornerRadius
				)
			} else {
				BC = CGPoint(
					x: AB0.x - (CA.y - AB0.y) / a * cornerRadius,
					y: AB0.y + (CA.x - AB0.x) / a * cornerRadius
				)
			}
		}
		return BC
	}
	
}
