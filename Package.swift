// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "THEOplayerSDK",
    platforms: [
        .iOS( .v11),
        .tvOS(.v11)
    ],
    products: [
        .library(name: "THEOplayerSDK", targets: ["THEOplayerSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "THEOplayerSDK",
            path: "Frameworks/THEOplayerSDK-basic/THEOplayerSDK.xcframework"
        )
    ]
)
