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
        .library(name: "THEOplayerGoogleCastIntegration", targets: ["THEOplayerGoogleCastIntegration"])
    ],
    targets: [
        .binaryTarget(
            name: "THEOplayerSDK",
            path: "THEOplayerSDK-core/THEOplayerSDK.xcframework"
        ),
        .binaryTarget(
            name: "THEOplayerGoogleCastIntegration",
            path: "THEOplayer-Integration-GoogleCast/THEOplayerGoogleCastIntegration.xcframework"
        ),
    ]
)
