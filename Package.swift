// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "Link"
            ]
        )
    ],
    targets: [
        .target(
            name: "Link",
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://github.com/combateafraude/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteC.xcframework.zip",
            checksum: "1617d8755979a8bac573096324588ca47a46bf4787f481efcdf7d3d871f0cbaf"
        )
    ]
)
