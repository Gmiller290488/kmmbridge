// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Gmiller290488/kmmbridge/gm/kmmbridge/allshared-kmmbridge/0.1.4/allshared-kmmbridge-0.1.4.zip"
let remoteKotlinChecksum = "1202a32d7bd57caa4d2e2e648a179a1a2b3b4417902614fe3cda17d9af9d9587"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)