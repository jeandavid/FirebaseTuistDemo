import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let project = Project(
    name: "DemoApp",
    organizationName: "some.org",
    options: .options(
        automaticSchemesOptions: .disabled
    ),
    settings: .settings(configurations: Configuration.myConfigurations),
    targets: [
        Target(
            name: "DemoApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.demoapp",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .external(name: "FirebaseAnalytics"),
                .external(name: "FirebasePerformance"),
                .external(name: "FirebaseCrashlytics"),
                .external(name: "FirebaseDynamicLinks"),
                .external(name: "FirebaseMessaging")
            ]
        )
    ],
    schemes: [
        Scheme(
            name: "Prod",
            runAction: .runAction(
                configuration: .prod,
                executable: .project(path: ".", target: "DemoApp")
            )
        ),
    ]
)
