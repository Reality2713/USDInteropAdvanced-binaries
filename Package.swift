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
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/AppleUSDSchemasUSD-0.2.14.xcframework.zip",
            checksum: "4f1f20b9acabf6c1529b19d2a6f66ccd08f512a52c11e91a4606a5d490bec63f"
        ),
        .binaryTarget(
            name: "USDInteropAdvanced",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvanced-0.2.14.xcframework.zip",
            checksum: "d391c17f62e34920323566c9ddae5d87bd1fe4c1a31eeb29d4d84cb73a1ea2df"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedAppleTools",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedAppleTools-0.2.14.xcframework.zip",
            checksum: "aeac165cdf2f829cedfa24bd58aff54d19e56271027c174762bdfeaa915a9932"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedCore",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedCore-0.2.14.xcframework.zip",
            checksum: "2e616904636da2c2cd536c66374d1ed257fc8c3c71095b6b537cac724556d228"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedEditing",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedEditing-0.2.14.xcframework.zip",
            checksum: "55610f02233a74fdecddf2f978091ef47693375b2684f5ffecc38519370f9e2e"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedInspection-0.2.14.xcframework.zip",
            checksum: "f204c7bfe31cf94ee5dbf53af5fce76ecc45baa5bb108a53b7d361532456afb1"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedPlugins",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedPlugins-0.2.14.xcframework.zip",
            checksum: "25a16069800a6442e6de5ee6fb7405ac8c703c1107548fb3c30dccb399d9c52f"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSession",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedSession-0.2.14.xcframework.zip",
            checksum: "2c51a6bb0c8011f0a4fd214777f9112c404ef454be5d65d7c5de1390d88ab62e"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSurgery",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedSurgery-0.2.14.xcframework.zip",
            checksum: "8cbcf6e844e581aecb6db9c16707ae5f68ed552e8077a7a1948c0d17b2feb5d5"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedUtils",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedUtils-0.2.14.xcframework.zip",
            checksum: "f607b0c21bdf593e618db5b28b947a481fe8b0f3f574bd41acde54ca73f490cc"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.14/Artifacts/v0.2.14/USDInteropAdvancedWorkflows-0.2.14.xcframework.zip",
            checksum: "e60711f48013cad4de19d55721c3823ba9c789fc4639c80d390103ef650dbe8c"
        ),
    ]
)
