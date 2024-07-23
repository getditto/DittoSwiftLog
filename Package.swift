// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DittoSwiftLog",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DittoSwiftLog",
            targets: ["DittoSwiftLog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoSwiftPackage.git", exact: "4.8.0-rc.1"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DittoSwiftLog",
            dependencies: [
                .product(name: "DittoObjC", package: "DittoSwiftPackage"),
                .product(name: "DittoSwift", package: "DittoSwiftPackage"),
                .product(name: "Logging", package: "swift-log")
            ]
        )
    ]
)
