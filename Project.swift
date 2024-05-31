import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .app(
    name: "TextureDebug",
    resources: "TextureDebug/Resources/*",
    dependencies: [
        .external(name: "TextureSwiftSupport")
    ]
)
