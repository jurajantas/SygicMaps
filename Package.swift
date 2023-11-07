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
        .package(url: "https://github.com/henrich-mauritz/SygicAuth.git", from: "1.3.1")
    ],
    targets: [
        .binaryTarget(
            name: "SygicMaps",
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/sdk/maps-ios/22.1.2/maps-ios-22.1.2.zip",
            checksum: "11130f525b149fee079ac31018b754ca36dc9c02ba78526b44b5c0621736d916")
    ]
)
