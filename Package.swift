// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Multipart",
    products: [
        .library(name: "Multipart", targets: ["Multipart"]),
        .library(name: "FormData", targets: ["FormData"]),
    ],
    dependencies: [
        // Core extensions, type-aliases, and functions that facilitate common tasks.
        .package(url: "https://github.com/vapor/core.git", .branch("beta")),

        // HTTP, WebSockets, Streams, SMTP, etc.
        .package(url: "https://github.com/vapor/engine.git", .branch("beta")),
    ],
    targets: [
        .target(name: "Multipart", dependencies: ["Core", "HTTP"]),
        .testTarget(name: "MultipartTests", dependencies: ["Multipart"]),
        .target(name: "FormData", dependencies: ["Multipart", "Core"]),
        .testTarget(name: "FormDataTests", dependencies: ["FormData"]),
    ]
)
