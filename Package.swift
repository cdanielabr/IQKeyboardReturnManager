// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQKeyboardReturnManager",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IQKeyboardReturnManager",
            targets: ["IQKeyboardReturnManager"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cdanielabr/IQKeyboardCore.git", from: "main"),
    ],
    targets: [
        .target(name: "IQKeyboardReturnManager",
            dependencies: ["IQKeyboardCore"],
            path: "IQKeyboardReturnManager",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
