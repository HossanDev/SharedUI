// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedUI",
    
    platforms: [
      .iOS(.v16),
      .macOS(.v14)
    ],
    
    products: [
        .library(
            name: "SharedUI",
            targets: ["SharedUI"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/HossanDev/RepositoryModule.git", branch: "main"),
        .package(url: "https://github.com/HossanDev/NetworkModule.git", branch: "main"),
    ],
    
    targets: [
        .target(
            name: "SharedUI",
            dependencies: [
                .product(name: "RepositoryModule", package: "RepositoryModule"),
                .product(name: "NetworkModule", package: "NetworkModule")
            ]
        ),
    ]
)
