// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SCGateway",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SCGateway",
            targets: ["SCGateway"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "SCGateway",
                      url: "https://gateway.smallcase.com/scgateway_mixpanel/1.0.5/SCGateway.xcframework.zip",
                      checksum: "f3be31146874c9c9b5518102dc3fd38b7a126aa84bb3b3dd5b96c3dfd50da9aa"),
    ]
)
