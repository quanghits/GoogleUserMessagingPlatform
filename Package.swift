// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

 // ref. https://github.com/CocoaPods/Specs/blob/6c4ab4f0d57f70816f3e2cfb8476c02b8c1a6e76/Specs/5/9/a/Google-Mobile-Ads-SDK/8.2.0/Google-Mobile-Ads-SDK.podspec.json

import PackageDescription

let package = Package(
    name: "GoogleUserMessagingPlatform",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UserMessagingPlatform",
            targets: ["UserMessagingPlatformTarget"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "UserMessagingPlatformTarget",
                dependencies: [
                    .target(name: "UserMessagingPlatform")
                ],
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("WebKit")
                ]),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "Binary/UserMessagingPlatform.xcframework"),
//        .binaryTarget(name: "UserMessagingPlatform",
//                      url: "",
//                      checksum: ""),
    ]
)
