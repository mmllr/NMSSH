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
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CSSH",
            url: "https://cloud.kf-interactive.com/index.php/s/C5tTbzS6cE4Ryjt/download/CSSH.xcframework.zip",
            checksum: "40fe52c648d1ffc75b7c56e306a46a786ee87782d21408c4c072b2752c6e067c"
        ),
        .target(
            name: "NMSSH",
            dependencies: [
                "CSSH"
            ]
        )
    ]
)

