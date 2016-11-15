import PackageDescription

let package = Package(
    name: "SwiftServerExample-Common",
    targets : [
        Target(name: "SwiftExampleCommon")
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 15)
    ]
)
