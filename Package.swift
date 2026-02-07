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
        .library(name: "USDInteropAdvanced", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedWorkflows", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedEditing", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedInspection", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedCore", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedUtils", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedSession", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedSurgery", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedPlugins", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "USDInteropAdvancedAppleTools", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
        .library(name: "AppleUSDSchemasUSD", targets: ["USDInteropAdvancedCore", "USDInteropAdvancedUtils", "USDInteropAdvancedAppleTools", "USDInteropAdvancedPlugins", "USDInteropAdvancedEditing", "USDInteropAdvancedInspection", "USDInteropAdvancedSession", "USDInteropAdvancedSurgery", "USDInteropAdvancedWorkflows", "USDInteropAdvanced", "AppleUSDSchemasUSD", "_USDInteropAdvancedBinaryDeps"]),
    ],

    dependencies: [
        // Pin to the exact revisions used when compiling these XCFrameworks.
        // This avoids accidental ABI drift where the binary module interface imports OpenUSD/USDInterop
        // symbols that differ from whatever "latest" happens to be at build time.
        .package(url: "https://github.com/Reality2713/USDInterop", revision: "25ce64a6dddeddfd20b3c7dc2b285a866a0fdb74"),
        // Needed so this package can express a direct dependency on the OpenUSD product.
        // (Some transitive Clang modules required by OpenUSD are not reliably visible unless OpenUSD
        // is a direct dependency of the client package graph.)
        .package(url: "https://github.com/Reality2713/SwiftUsd.git", branch: "swift-syntax-602"),
    ],

    targets: [
        .binaryTarget(
            name: "USDInteropAdvancedCore",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedCore.xcframework.zip",
            checksum: "7d96b48398f95873f502461971b621a52f28e9f1bb387e19503aac14f71267c9"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedUtils",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedUtils.xcframework.zip",
            checksum: "f5a78421387ce85a60402af79b4c4cc528d0350327eb75fea894698eb3d27bb6"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedAppleTools",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedAppleTools.xcframework.zip",
            checksum: "36f1a8a28a4b1ded66f5c854ca61dafbbbe748a8f6cf6fe9f2b27a014bd89c8e"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedPlugins",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedPlugins.xcframework.zip",
            checksum: "66c1828aa4687afc045c1f21d331c406c51a9b2ac24b7859661a820883338a18"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedEditing",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedEditing.xcframework.zip",
            checksum: "853cd5cc4047dc71b010b8533cc14ba0672b543f568e3ebb00b7ab046cb524f1"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedInspection",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedInspection.xcframework.zip",
            checksum: "4f38d5a70d3570fefa0d88772ccaf3bc00961a96a20cb4cb6dece48579d9b381"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSession",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedSession.xcframework.zip",
            checksum: "88e39a7818fbdd595efe0d256d61a4e2ef5ef19169635d7226a4575e09eedcc3"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedSurgery",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedSurgery.xcframework.zip",
            checksum: "7cc65b6ab768c75ef2e715a758be9cdc230e002a4f0969a8ea38fc4dfc1b6661"
        ),
        .binaryTarget(
            name: "USDInteropAdvancedWorkflows",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvancedWorkflows.xcframework.zip",
            checksum: "bdb219a10e5055ddade159e3cbbf5e85c4ff1ba156d816fb2576cc7e45a0a411"
        ),
        .binaryTarget(
            name: "USDInteropAdvanced",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/USDInteropAdvanced.xcframework.zip",
            checksum: "0888a34042cd92eb28810b59af2caf3220c4343b169cb54cfb807a029bdfc46d"
        ),
        .binaryTarget(
            name: "AppleUSDSchemasUSD",
            url: "https://raw.githubusercontent.com/Reality2713/USDInteropAdvanced-binaries/v0.2.10/Artifacts/v0.2.10/AppleUSDSchemasUSD.xcframework.zip",
            checksum: "0ed005a4a8f3120ddcf2847e45702a798689a1e9ccea656a7092a7e5b33fad7d"
        ),

        // SwiftPM binary targets cannot declare dependencies, but the `.swiftinterface` files for the
        // XCFrameworks import OpenUSD/USDInterfaces/USDInteropCxx. This sidecar target declares those
        // dependencies so consumers can import the binaries without "no such module OpenUSD".
        .target(
            name: "_USDInteropAdvancedBinaryDeps",
            dependencies: [
                .product(name: "USDInteropCxx", package: "USDInterop"),
                .product(name: "USDInterfaces", package: "USDInterop"),
                .product(name: "OpenUSD", package: "SwiftUsd"),
            ],
            path: "Sources/_USDInteropAdvancedBinaryDeps",
            swiftSettings: [
                .interoperabilityMode(.Cxx),
            ]
        ),
    ]
)
