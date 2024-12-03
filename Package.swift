// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "ZenGeometry",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_15),
		.watchOS(.v6)
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
