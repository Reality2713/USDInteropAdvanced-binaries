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
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.13/Artifacts/v0.2.13/USDInteropAdvancedEditing-0.2.13.xcframework.zip",
            checksum: "d339b209ef46107bb9cd023565f41b072cb3459e92d10a910f773a5c42e8ab1e"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.13/Artifacts/v0.2.13/USDInteropAdvancedInspection-0.2.13.xcframework.zip",
            checksum: "253d82d71ecf40efaf3ff6c032c8a980ee84c7faeed6c901e8695503bca7fdca"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.13/Artifacts/v0.2.13/USDInteropAdvancedWorkflows-0.2.13.xcframework.zip",
            checksum: "6b7bc594b5ad9d92ba76321dfdbebb70f724211967d543d10c7c2a90b0509325"
        ),
    ]
)
