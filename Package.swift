// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NMSSH",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "NMSSH",
            targets: ["NMSSH"]),
    ],
    dependencies: [
        .package(name: "CSSH", url: "https://github.com/DimaRU/Libssh2Prebuild.git", from: "1.9.0")
    ],
    targets: [
        .target(
            name: "NMSSH",
            dependencies: [
                "CSSH"
            ]
        )
    ]
)

