// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "USDInteropAdvancedBinaries",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .library(name: "AppleUSDSchemasUSD", targets: ["AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvanced", targets: ["USDInteropAdvanced"]),
        .library(name: "USDInteropAdvancedAppleTools", targets: ["USDInteropAdvancedAppleTools"]),
        .library(name: "USDInteropAdvancedCore", targets: ["USDInteropAdvancedCore"]),
        .library(name: "USDInteropAdvancedEditing", targets: ["USDInteropAdvancedEditing"]),
        .library(name: "USDInteropAdvancedInspection", targets: ["USDInteropAdvancedInspection"]),
        .library(name: "USDInteropAdvancedPlugins", targets: ["USDInteropAdvancedPlugins"]),
        .library(name: "USDInteropAdvancedSession", targets: ["USDInteropAdvancedSession"]),
        .library(name: "USDInteropAdvancedSurgery", targets: ["USDInteropAdvancedSurgery"]),
        .library(name: "USDInteropAdvancedUtils", targets: ["USDInteropAdvancedUtils"]),
        .library(name: "USDInteropAdvancedWorkflows", targets: ["USDInteropAdvancedWorkflows"]),
    ],
    targets: [
        .binaryTarget(
            name: "AppleUSDSchemasUSD",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/AppleUSDSchemasUSD-0.2.15.xcframework.zip",
            checksum: "6f5d010f8e7fea961c9d0eb0a2ad495844ac3c044bd5e2ac790ae24d98f36457"
        ),
        .binaryTarget(
            name: "USDInteropAdvanced",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvanced-0.2.15.xcframework.zip",
            checksum: "60d6c5463f2b13e74005f5ea078f17146106ff96a55f6c2bc6cd4df4c09f661e"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedAppleTools",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedAppleTools-0.2.15.xcframework.zip",
            checksum: "5d9bc2bc503f9d4c64a1d03c9dc76cefa38d9371214c82a05f66b94120d350a5"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedCore",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedCore-0.2.15.xcframework.zip",
            checksum: "c4b2f33a719f2d4f648023d623d7f95956be065a25d9ac1c1cdbbb85cc939467"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedEditing",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedEditing-0.2.15.xcframework.zip",
            checksum: "c8a27cb37ac58f682cb9e77aa0064c811981831dcc37046b1bcac843f4980155"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedInspection-0.2.15.xcframework.zip",
            checksum: "81e222eaf81f6df85792650c287e3e345afd32fd23e33954a73f926a25076671"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedPlugins",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedPlugins-0.2.15.xcframework.zip",
            checksum: "d29d992bd817464dad24bca410170479e11dd16955f528c6d291488c723b80bb"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSession",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedSession-0.2.15.xcframework.zip",
            checksum: "e2ce8f911895b212098f14b38352dde0f52882996590e1c1a99e6f8757a80f30"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSurgery",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedSurgery-0.2.15.xcframework.zip",
            checksum: "5a313c9e0f6050767e4533d9ec0a46dfd903cb418c7389c75ba20bbf184a1437"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedUtils",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedUtils-0.2.15.xcframework.zip",
            checksum: "57f236786085200be48b757a59e2f5ba404714331712cf479b72f41dbe3e2c36"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.15/Artifacts/v0.2.15/USDInteropAdvancedWorkflows-0.2.15.xcframework.zip",
            checksum: "17d34a65f2831d53ecdc24d9f6a405cdb1fa4a74504f6e9719171489956908ea"
        ),
    ]
)
