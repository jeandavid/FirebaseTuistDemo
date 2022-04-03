import ProjectDescription

public extension ConfigurationName {
    static let staging = ConfigurationName("staging")
    static let prod = ConfigurationName("prod")
}

public extension Configuration {
    static let myConfigurations: [Configuration] = [
        .debug(name: .staging),
        .release(name: .prod)
    ]
}
