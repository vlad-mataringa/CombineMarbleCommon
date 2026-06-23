# CombineMarbleCommon

This repo is a part of [CombineMarbleDebugger](https://github.com/vlad-mataringa/CombineMarbleDebugger) project. Witch is debugging tool for Swift Combine framework, based on logs.  
This repo is the shared code between:
- [CombineMarbleDebugger](https://github.com/vlad-mataringa/CombineMarbleDebugger) witch is the debugging user interface.
- [CombineMarbleLogging](https://github.com/vlad-mataringa/CombineMarbleLogging) witch is the logging library

### Swift Package Manager

To install CombineMarbleCommon using [Swift Package Manager](https://github.com/swiftlang/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for the repo with the current version:

1. In Xcode, select “File” → “Add Packages...”
1. Enter https://github.com/airbnb/lottie-spm.git

or you can add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/vlad-mataringa/CombineMarbleCommon", from: "1.0.0")
```
