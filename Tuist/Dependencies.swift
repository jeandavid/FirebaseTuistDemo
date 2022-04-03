import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            .remote(url: "https://github.com/firebase/firebase-ios-sdk.git", requirement: .upToNextMajor(from: "8.10.0")),
        ],
        baseSettings: Settings.settings(configurations: Configuration.myConfigurations)
    ),
    platforms: [.iOS]
)

