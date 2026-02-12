// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    ),
    .library(
        name: "Tun2SocksKitC",
        targets: ["Tun2SocksKitC"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["HevSocks5Tunnel", "Tun2SocksKitC"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
       name: "HevSocks5Tunnel",
       url: "https://github.com/werter08/Tun2SocksKit/releases/download/5.14.4-mango/HevSocks5Tunnel.xcframework.zip",
       checksum: "70c34e04b6b2a2349019569797d75c07df76d385dd08cf632e6e27ac2a5abc5e"
   )
  ]
)
