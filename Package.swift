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
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/sdk/maps-ios/25.3.4/maps-ios-25.3.4.zip",
            checksum: "de6980a87c634867b1f22d7bf284544f56fecc1cdaa1a836fb2036da5c931243")
    ]
)
