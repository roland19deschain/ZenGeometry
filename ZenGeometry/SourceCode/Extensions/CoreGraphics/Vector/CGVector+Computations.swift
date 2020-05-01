import CoreGraphics

extension CGVector {
	
	/// Returns the length (magnitude) of the vector described by the CGVector.
	var length: CGFloat {
		sqrt(dx * dx + dy * dy)
	}
	
	/// Calculate the dot product of two vectors.
	func dotProduct(_ vector: CGVector) -> CGFloat {
		dx * vector.dx + dy * vector.dy
	}
	
	/// Calculate the angle of between two vectors.
	func angle(to vector: CGVector) -> CGFloat {
		let dot = dotProduct(vector)
		let magnitude = length * vector.length
		
		guard magnitude != 0 else {
			return 0
		}
		
		var tmp = dot / magnitude
		
		if (tmp > 1) {
			tmp = 1
		} else if (tmp < -1) {
			tmp = -1
		}
		
		return acos(tmp)
	}
	
}
