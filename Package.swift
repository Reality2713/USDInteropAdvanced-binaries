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
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.12/Artifacts/v0.2.12/USDInteropAdvancedEditing-0.2.12.xcframework.zip",
            checksum: "17d2cd9e3f2e8f9a601e3ecfb08124d18c8bdc601607a446c057eec3b0044c68"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.12/Artifacts/v0.2.12/USDInteropAdvancedInspection-0.2.12.xcframework.zip",
            checksum: "1d115c8385420a1a069e246bcadcce74daea94f38e643e88bf980ca1d7f83b30"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.12/Artifacts/v0.2.12/USDInteropAdvancedWorkflows-0.2.12.xcframework.zip",
            checksum: "31667909339ab49490d6e28210feb88c317446711cea10e9e7d5b534439c65ab"
        ),
    ]
)
