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
            checksum: "c45bce0693bd049565056392dce21b5000fe0e67d3f5300c4e015555aaf9e72b"
        )
    ]
)
