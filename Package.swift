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
        .package(url: "https://github.com/jurajantas/SygicAuth", from: "1.3.1")
    ],
    targets: [
        .binaryTarget(
            name: "SygicMaps",
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/sdk/maps-ios/25.2.1/maps-ios-25.2.1.zip",
            checksum: "5219d6b860c199b75b3668e9601459e33a63c22e6e7b59e76c19189e60cef3a8")
    ]
)
