// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_12), .iOS(.v11), .tvOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-swift",
            exact: "10.48.0"
        )
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: ["realm-swift"],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
