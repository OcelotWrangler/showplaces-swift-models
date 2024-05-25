// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShowplaceModels",
    platforms: [
        .macOS(.v13),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ShowplaceModels",
            targets: ["ShowplaceModels"]
        ),
    ], 
    dependencies: [
        .package(url: "https://github.com/vapor/fluent.git", from: "4.8.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ShowplaceModels",
            dependencies: [
                .product(name: "Fluent", package: "fluent"),
            ]
        ),
        .testTarget(
            name: "ShowplaceModelsTests",
            dependencies: ["ShowplaceModels"]
        ),
    ]
)
