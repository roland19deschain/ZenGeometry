import CoreGraphics

public struct LineSegment {
	
	// MARK: - Stored Properties
	
	let start: CGPoint
	let end: CGPoint
	
	// MARK: - Life Cycle
	
	public init(
		start: CGPoint,
		end: CGPoint
	) {
		self.start = start
		self.end = end
	}
	
}
