// swift-tools-version:5.3
// In order to support users running on the latest Xcodes, please ensure that
// Package@swift-5.5.swift is kept in sync with this file.
/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2021 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See https://swift.org/LICENSE.txt for license information
 See https://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "swift-markdown",
    products: [
        .library(
            name: "Markdown",
            targets: ["Markdown"])
		,
    ],
	dependencies: [
		.package(url: "https://github.com/ivalx1s/swift-cmark.git", .upToNextMinor(from: .init(0, 0, 221109))),
	],
    targets: [
        .target(
            name: "Markdown",
            dependencies: [
                "CAtomic",
                .product(name: "cmark-gfm", package: "swift-cmark"),
                .product(name: "cmark-gfm-extensions", package: "swift-cmark"),
            ]
		),
		.target(name: "CAtomic"),
    ]
)



