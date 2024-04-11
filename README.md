# SwiftUI Splash Screen with Lottie Animations

This project demonstrates how to create an attractive and animated splash screen for iOS applications using SwiftUI and Lottie animations. The project is ideal for developers looking to enhance their apps with dynamic visuals and learn more about integrating animations in SwiftUI.

## Features

- **SwiftUI Framework**: Utilizes the latest SwiftUI techniques for modern UI design.
- **Lottie Animations**: Incorporates Lottie for smooth and appealing animations.
- **Modular Code**: Easily understandable and reusable components.

## Installation

To run this project, clone the repo and open it in Xcode:

```bash
git clone https://github.com/pouyasadri/CoffeSplashScreen.git
cd CoffeSplashScreen
```
Ensure you have the latest version of Xcode installed to handle all SwiftUI features.

## Usage
The project consists of the following main components:

- `ContentView.swift`: The root view managing the transition between the splash screen and the main content view.
- `SplashScreen.swift`: Defines the splash screen layout and animation.
- `MainView.swift`: The main app interface after the splash screen.
- `LottieView.swift`: A wrapper view for integrating Lottie animations with SwiftUI.
To integrate your own animations, replace the Lottie file in the assets with your animation file and update the references in `SplashScreen.swift`.
