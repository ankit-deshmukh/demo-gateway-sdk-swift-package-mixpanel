// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SCGateway",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SCGateway",
            targets: ["SCGatewayWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Mixpanel", url: "https://github.com/mixpanel/mixpanel-swift", .exact("3.3.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SCGatewayWrapper",
            dependencies: [
                .target(name: "SCGateway", condition: .when(platforms: .some([.iOS]))),
                .product(name: "Mixpanel", package: "Mixpanel")
            ]
        ),
        .binaryTarget(name: "SCGateway",
                      url: "https://gateway.smallcase.com/scgateway_mixpanel/1.0.6/SCGateway.xcframework.zip",
                      checksum: "1ebaa99195f32bdd8cbfa91f1824f84281e9db1514c40bdcceafa8113009984c"),
    ]
)
