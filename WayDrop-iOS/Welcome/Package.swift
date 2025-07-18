// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Welcome",
    platforms: [ .iOS(.v16) ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Welcome",
            targets: ["Welcome"]
        ),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Navigation"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Welcome",
            dependencies: ["DesignSystem", "Navigation"]
        ),
        .testTarget(
            name: "WelcomeTests",
            dependencies: ["Welcome"]
        ),
    ]
)
