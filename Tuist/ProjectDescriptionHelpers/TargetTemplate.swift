import ProjectDescription

extension [Target] {
    /// Helper function to create an app target and an associated unit test target
    internal static func makeAppTargets(
        name: String,
        destinations: Destinations,
        deploymentTargets: DeploymentTargets,
        resources: ResourceFileElements?,
        entitlements: Entitlements?,
        dependencies: [TargetDependency] = []
    ) -> Self {
        let app: Target = .target(
            name: name,
            destinations: destinations,
            product: .app,
            bundleId: "com.try.\(name)",
            deploymentTargets: deploymentTargets,
            sources: ["\(name)/**"],
            resources: resources,
            entitlements: entitlements,
            dependencies: dependencies,
            settings: .appSettings
        )
        let unitTests: Target = .target(
            name: "\(name)Tests",
            destinations: destinations,
            product: .unitTests,
            bundleId: "com.try.\(name)Tests",
            deploymentTargets: deploymentTargets,
            infoPlist: .default,
            sources: ["\(name)Tests/**"],
            dependencies: [.target(name: name)]
        )
        return [app, unitTests]
    }
}
