// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pickleclimb",
    products: [
        .library(
            name: "PickleClimbCore",
            targets: ["PickleClimbCore"]
        ),
        .executable(
            name: "pickleclimb",
            targets: ["pickleclimb"]
        ),
    ],
    targets: [
        .target(
            name: "PickleClimbCore",
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ]
        ),
        .executableTarget(
            name: "pickleclimb",
            dependencies: ["PickleClimbCore"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ]
        ),
        .testTarget(
            name: "pickleclimbTests",
            dependencies: ["pickleclimb"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ]
        ),
    ]
)
