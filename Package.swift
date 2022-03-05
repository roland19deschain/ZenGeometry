// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ZenGeometry",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
		.macOS(.v10_10),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "ZenGeometry",
			type: .static,
			targets: ["ZenGeometry"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.0")
	],
	targets: [
		.target(
			name: "ZenGeometry",
			dependencies: [
				.product(name: "ZenSwift", package: "zenswift")
			],
			path: "Sources/"
		),
		.testTarget(
			name: "ZenGeometryTests",
			dependencies: ["ZenGeometry"],
			path: "Tests/"
		)
	]
)
