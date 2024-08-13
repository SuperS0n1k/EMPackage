// swift-tools-version:5.5.0
import PackageDescription
let package = Package(
	name: "EMProxy",
	products: [
		.library(
			name: "EMProxy",
			targets: ["EMProxy"]),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "EMPRustXcframework",
			path: "RustXcframework.xcframework"
		),
		.target(
			name: "EMProxy",
			dependencies: ["EMPRustXcframework"])
	]
)
	