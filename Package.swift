// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShowplacesModels",
    platforms: [
        .macOS(.v13),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ShowplacesModels",
            targets: ["ShowplacesModels"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // No dependencies, deliberately: the iOS app links this package, so a server
        // framework here ships inside the app. Pharos adds Vapor's `Content` conformance
        // to these types itself, in `ShowplacesModels+Content.swift`.
        .target(
            name: "ShowplacesModels"
        ),
        .testTarget(
            name: "ShowplacesModelsTests",
            dependencies: ["ShowplacesModels"]
        ),
    ]
)
