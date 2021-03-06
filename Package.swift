// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleCastSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleCast",
			type: .dynamic,
            targets: ["GoogleCast", "GoogleCastCoreResources", "GoogleCastUIResources"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
		.target(
			name: "GoogleCastCoreResources",
			resources: [.copy("./GoogleCastCoreResources.bundle")]
		),
		.target(
			name: "GoogleCastUIResources",
			resources: [.copy("./GoogleCastUIResources.bundle")]
		),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
			name: "GoogleCast",
			path: "./GoogleCast.xcframework")
	]
)
