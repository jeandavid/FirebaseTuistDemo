import ProjectDescription

let workspace = Workspace(
    name: "DemoApp",
    projects: [
        "Apps/DemoApp"
    ],
    generationOptions: .options(
        enableAutomaticXcodeSchemes: false,
        autogeneratedWorkspaceSchemes: .disabled
    )
)