// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription
    import ProjectDescriptionHelpers

    internal let packageSettings = PackageSettings(
        baseSettings: .packageSettings
    )

#endif

internal let package = Package(
    name: "CorePackage",
    dependencies: [
        .package(
            url: "https://github.com/FluidGroup/TextureSwiftSupport",
            exact: Version(3, 20, 1)
        )
    ]
)
