# Calculator for iOS — Swift / UIKit

A small **iOS learning project** created in January 2024 to practice UIKit, Storyboard connections, and basic button actions in Swift.

This is a **two-number integer calculator**, not a scientific calculator or an App Store release.

## Features

- Enter two integers into the **First Number** and **Second Number** fields.
- Tap **+**, **−**, **×**, or **÷** to calculate a result.
- Display the answer directly in the **Result** label.
- Show a message rather than crashing when input is missing or invalid, division by zero is attempted, or an integer operation overflows.

**Behavior notes:** Calculations use Swift `Int` values. Division is **integer division** (for example, `7 / 2` displays `3`); the app does not offer decimals, operation history or scientific functions. The interface was designed as a compact tutorial exercise, not a polished responsive calculator layout.

## Code and architecture

| File | Purpose |
| --- | --- |
| [`Calculator/ViewController.swift`](Calculator/ViewController.swift) | UIKit outlets, four button actions and shared safe integer calculation |
| [`Calculator/Base.lproj/Main.storyboard`](Calculator/Base.lproj/Main.storyboard) | Input fields, operation buttons, label and storyboard connections |
| [`Calculator/AppDelegate.swift`](Calculator/AppDelegate.swift) | Application lifecycle |
| [`Calculator/SceneDelegate.swift`](Calculator/SceneDelegate.swift) | Scene lifecycle |
| [`Calculator/Info.plist`](Calculator/Info.plist) | Scene/storyboard configuration |

The checked-in Xcode project targets **Swift 5** and **iOS 17.2 or later**. It does not depend on CocoaPods or a Swift Package manifest.

## Running the app

1. Clone the repository on a computer with **macOS and Xcode**:
   ```bash
   git clone https://github.com/fatihemres/Calculator---for-iOS-by-Swift.git
   cd Calculator---for-iOS-by-Swift
   ```
2. Open [`Calculator.xcodeproj`](Calculator.xcodeproj) in Xcode.
3. Select the **Calculator** shared scheme and a compatible iOS simulator.
4. Build and run; enter two integers and select an operator.

### Automated build

[GitHub Actions](.github/workflows/ios-build.yml) runs a hosted **macOS 15 / Xcode 16.4** iOS Simulator compilation check on code or project changes. A passing build demonstrates compilation only: this repository currently has **no XCTest targets**, so no automated behavior, UI or real-device test coverage is claimed.

## License

The current [LICENSE](LICENSE) reserves rights to original owner-controlled work while recognizing third-party rights and any valid pre-existing grants. Public visibility does not by itself grant reuse permission.
