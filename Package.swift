// swift-tools-version: 6.2
import PackageDescription

// Public binary wrapper for the private USDInteropAdvanced source package.
// Artifacts are stored in this repo under Artifacts/<version>/ as zipped XCFrameworks.

let package = Package(
    name: "USDInteropAdvanced",
    platforms: [
        .macOS(.v26)
    ],

    products: [
        // Convenience: each product includes all modules so transitive imports resolve.
        .library(name: "USDInteropAdvanced", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedWorkflows", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedEditing", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedInspection", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedCore", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedUtils", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedSession", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedSurgery", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedPlugins", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "USDInteropAdvancedAppleTools", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
        .library(name: "AppleUSDSchemasUSD", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD"]),
    ],
    targets: [
        .binaryTarget(
            name: "USDInteropAdvancedCore",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedCore.xcframework.zip",
            checksum: "62493ebe0b5b787506fc82bca1b725a9dafbe23a35edd6608ae9428a1a12cda9"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedUtils",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedUtils.xcframework.zip",
            checksum: "05a59a7dacb8ee2a7f6d4c7520310622eca44959ee3fcd633ec7856000e697fa"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedAppleTools",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedAppleTools.xcframework.zip",
            checksum: "dadea911c37920fe971c65d95aefb9e0d22a2074b94982ccbfdd1f56487fe555"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedPlugins",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedPlugins.xcframework.zip",
            checksum: "3477e1e52064c5a0894ea9f50e1afef132ba0d40ba00e6201540a8e8856e7e98"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedEditing",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedEditing.xcframework.zip",
            checksum: "d38d8f91a1f32476380213464b0f16a67a7e94a254a8314e1d84aae28af71cbe"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedInspection.xcframework.zip",
            checksum: "ad106c6202226cb68d57699bf7914f7750c613ca24e05fb5d6135d388cccbe49"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSession",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedSession.xcframework.zip",
            checksum: "6c9cf65b852b9830b9e770b9f745c9a42e7f09d555385133c686752378d3d02d"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSurgery",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedSurgery.xcframework.zip",
            checksum: "02f262ca413330dffaca904fc23a316e18bff983e9f40fa3e8eb126c72fcd189"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvancedWorkflows.xcframework.zip",
            checksum: "619de0c6bdf9f2fcc0d111742dc21d0110b1ef8ad863b7335b4eb242bf07cb76"
        ),
        .binaryTarget(
            name: "USDInteropAdvanced",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/USDInteropAdvanced.xcframework.zip",
            checksum: "b67adbe4f9e25275368cc7b2bfb504e4101fc610bfd12265c83163b3a4263c58"
        ),
        .binaryTarget(
            name: "AppleUSDSchemasUSD",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.8/Artifacts/v0.2.8/AppleUSDSchemasUSD.xcframework.zip",
            checksum: "0ed005a4a8f3120ddcf2847e45702a798689a1e9ccea656a7092a7e5b33fad7d"
        ),
    ]
)