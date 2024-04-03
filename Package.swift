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
            url: "https://repository.sygic.com/repository/maven-sygic-internal/com/sygic/sdk/maps-ios/26.0.0-nightly.20240402.1272/maps-ios-26.0.0-nightly.20240402.1272.zip",
            checksum: "f0bc621aa1ada0986389b5e547607c60e09253d81c61ea6cfaa19bc8078ac6bb")
    ]
)
