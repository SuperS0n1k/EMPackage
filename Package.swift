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
			name: "RustXcframework",
			path: "RustXcframework.xcframework"
		),
		.target(
			name: "EMProxy",
			dependencies: ["RustXcframework"])
	]
)
	