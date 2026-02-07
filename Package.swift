// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "USDInteropAdvancedBinaries",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .library(name: "USDInteropAdvancedEditing", targets: ["USDInteropAdvancedEditing"]),
        .library(name: "USDInteropAdvancedInspection", targets: ["USDInteropAdvancedInspection"]),
        .library(name: "USDInteropAdvancedWorkflows", targets: ["USDInteropAdvancedWorkflows"]),
    ],
    targets: [
        .binaryTarget(
            name: "USDInteropAdvancedEditing",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.11/Artifacts/v0.2.11/USDInteropAdvancedEditing-0.2.11.xcframework.zip",
            checksum: "eeb917549226757ce1a5b26af515e098304c9c9ca29d26f9db540e45a071677f"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.11/Artifacts/v0.2.11/USDInteropAdvancedInspection-0.2.11.xcframework.zip",
            checksum: "6b8a57d36ed4712d73f91227e5a73e390ab02b5ec0f1873a66cf054842da0d88"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.11/Artifacts/v0.2.11/USDInteropAdvancedWorkflows-0.2.11.xcframework.zip",
            checksum: "a860bddbf8a3658787a851c2c28a2353a82959bb5af078e71d67be3b1ec3c420"
        ),
    ]
)
