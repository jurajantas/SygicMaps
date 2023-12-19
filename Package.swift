// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SygicMaps",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "SygicMaps",
            targets: ["SygicMaps"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jurajantas/SygicAuth", from: "1.3.2")
    ],
    targets: [
        .binaryTarget(
            name: "SygicMaps",
            url: "https://repository.sygic.com/repository/maven-sygic-internal/com/sygic/sdk/maps-ios/26.0.0-dev.2657/maps-ios-26.0.0-dev.2657.zip",
            checksum: "77737f16334df887c1cb4acfc0aee3df074d3a14e75d904b098fa4df04bc549b")
    ]
)
