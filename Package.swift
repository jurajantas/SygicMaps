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
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/sdk/maps-ios/25.3.1/maps-ios-25.3.1.zip",
            checksum: "09400eaee8ad9bff1c3cb5b0c5a71b515aae4077a084ddfc7dc4352c58f9d5ed")
    ]
)
