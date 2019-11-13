// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOpenGL",
        products:[
            .executable(name: "SwiftOpenGL", targets: ["SwiftOpenGL"])
        ],
    dependencies: [
        .package(url: "https://github.com/SwiftGL/Math.git", from: "2.0.0"),
        .package(url: "https://github.com/SwiftGL/Image.git", from: "2.0.0"),
    ],

    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(name: "CGLFW", path: "Sources/CGLFW"),
        .systemLibrary(name: "CGLEW", path: "Sources/CGLEW"),

        .target(
            name: "SwiftOpenGL",
            dependencies: ["SGLMath","SGLImage","CGLFW","CGLEW"]),



        .testTarget(
            name: "SwiftOpenGLTests",
            dependencies: ["SwiftOpenGL"]),
    ]
)

