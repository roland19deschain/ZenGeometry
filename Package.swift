// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "ZenGeometry",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v12),
		.tvOS(.v12),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "ZenGeometry",
			type: .static,
			targets: ["ZenGeometry"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "ZenGeometry",
			dependencies: [],
			path: "ZenGeometry/SourceCode/"
		)
	]
)
