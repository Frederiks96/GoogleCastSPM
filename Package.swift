// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleCastSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleCast",
            targets: ["GoogleCast"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
			name: "GoogleCast",
			url: "https://github.com/Frederiks96/GoogleCastSPM/blob/v4.6.1/GoogleCast.xcframework.zip",
			checksum: "8658662a5dc8044dcb008f2c49369edb97136f45178334a35f0d4a7a2ad9bf58")
    ]
)
