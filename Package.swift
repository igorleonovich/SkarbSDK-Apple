// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SkarbSDK",
  platforms: [
    .iOS("11.3"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "SkarbSDK",
      targets: ["SkarbSDK"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/grpc/grpc-swift", .upToNextMajor(from: "1.10.0")),
    .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.20.2"),
    .package(name: "Reachability", url: "https://github.com/ashleymills/Reachability.swift", .upToNextMajor(from: "5.1.0"))
  ],
  targets: [
    .target(
      name: "SkarbSDK",
      dependencies: [
        .product(name: "GRPC", package: "grpc-swift"),
        .product(name: "Reachability", package: "Reachability"),
        .product(name: "SwiftProtobuf", package: "SwiftProtobuf")
      ],
      linkerSettings: [
        .linkedFramework("Foundation"),
        .linkedFramework("AdSupport"),
        .linkedFramework("StoreKit"),
        .linkedFramework("AdServices"),
        .linkedFramework("AppTrackingTransparency")
      ]),
    
  ]
)
