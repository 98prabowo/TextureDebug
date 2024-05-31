import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
    /// Organization name
    public static let organizationName: String = "TECHNOLOGY"
    
    /// Minimum ios version
    public static let minimumIOSVersion: String = "14.0"
    
    /// Helper function to create the Framework Project for `GoodDoctorApp`
    ///
    /// - Parameters:
    ///   - name: Framework name.
    ///   - destinations: Platform destination. Default to `.iOS`.
    ///   - dependencies: List of dependencies.
    /// - Returns: Framework project.
    public static func app(
        name: String,
        destinations: Destinations = .iOS,
        deploymentTargets: DeploymentTargets = .iOS(minimumIOSVersion),
        resources: ResourceFileElements? = nil,
        entitlements: Entitlements? = nil,
        dependencies: [TargetDependency] = [],
        notificationContentDependencies: [TargetDependency] = [],
        notificationServiceDependencies: [TargetDependency] = []
    ) -> Project {
        let targets: [Target] = .makeAppTargets(
            name: name,
            destinations: destinations,
            deploymentTargets: deploymentTargets,
            resources: resources,
            entitlements: entitlements,
            dependencies: dependencies
        )
        
        return Project(
            name: name,
            organizationName: organizationName,
            settings: .gdSettings,
            targets: targets
        )
    }
}
