import ProjectDescription

extension Settings {
    public static var gdSettings: Self {
        return .settings(
            configurations: [
                .debug(
                    name: BuildConfiguration.debug.name,
                    settings: [:
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                ),
                .release(
                    name: BuildConfiguration.preview.name,
                    settings: [:
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                ),
                .release(
                    name: BuildConfiguration.release.name,
                    settings: [:
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                )
            ]
        )
    }
    
    public static var appSettings: Self {
        return .settings(
            configurations: [
                .debug(
                    name: BuildConfiguration.debug.name,
                    settings: [:
//                        "PRODUCT_BUNDLE_IDENTIFIER": .string("com.dimas.prabowo.Test"),
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "SWIFT_ACTIVE_COMPILATION_CONDITIONS": .string("DEBUG"),
//                        "ASSETCATALOG_COMPILER_APPICON_NAME": .string("AppIcon-Debug"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                ),
                .release(
                    name: BuildConfiguration.preview.name,
                    settings: [:
//                        "PRODUCT_BUNDLE_IDENTIFIER": .string("com.pajk.idpersonaldoctor"),
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "ASSETCATALOG_COMPILER_APPICON_NAME": .string("AppIcon-Preview"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                ),
                .release(
                    name: BuildConfiguration.release.name,
                    settings: [:
//                        "PRODUCT_BUNDLE_IDENTIFIER": .string("com.pajk.idpersonaldoctor"),
//                        "TARGETED_DEVICE_FAMILY": .string("1"),
//                        "ENABLE_USER_SCRIPT_SANDBOXING": .string("YES"),
//                        "ASSETCATALOG_COMPILER_APPICON_NAME": .string("AppIcon"),
//                        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": .string("YES"),
//                        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": .string("YES"),
                    ]
                )
            ]
        )
    }
    
    public static var packageSettings: Self {
        return .settings(configurations: [
            .debug(
                name: BuildConfiguration.debug.name,
                settings: [
                    "ENABLE_NS_ASSERTIONS": .string("NO"),
                ]
            ),
            .release(
                name: BuildConfiguration.preview.name,
                settings: [
                    "ENABLE_NS_ASSERTIONS": .string("NO"),
                ]
            ),
            .release(
                name: BuildConfiguration.release.name,
                settings: [
                    "ENABLE_NS_ASSERTIONS": .string("NO"),
                ]
            )
        ])
    }
}

public enum BuildConfiguration {
    case debug
    case preview
    case release
}

extension BuildConfiguration {
    public var name: ConfigurationName {
        switch self {
        case .debug:
            return "Debug"
        case .preview:
            return "Preview"
        case .release:
            return "Release"
        }
    }
}
