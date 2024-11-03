// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "ZenGeometry",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_13),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "ZenGeometry",
			type: .static,
			targets: ["ZenGeometry"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.13")
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
	],
	swiftLanguageModes: [.v6]
)
