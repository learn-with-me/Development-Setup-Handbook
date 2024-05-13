# Installation

## Using Homebrew

```sh
$ brew install --cask flutter
```

## Verify Installation

```sh
$ flutter --version
```

You should see something like:

```sh
Flutter 3.10.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision d3d8effc68 (3 days ago) • 2023-05-16 17:59:05 -0700
Engine • revision b4fb11214d
Tools • Dart 3.0.1 • DevTools 2.23.1
```

## Missing Dependencies

Run `Flutter Doctor` command to display the status of your Flutter installation. It tells you what dependencies are missing.

```sh
$ flutter doctor
```

I was still missing some, since I got the following error

```sh
[!] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
    ✗ cmdline-tools component is missing
      Run `path/to/sdkmanager --install "cmdline-tools;latest"`
      See https://developer.android.com/studio/command-line for more details.
    ✗ Android license status unknown.
      Run `flutter doctor --android-licenses` to accept the SDK licenses.
      See https://flutter.dev/docs/get-started/install/macos#android-setup for more details.
[✗] Xcode - develop for iOS and macOS
    ✗ Xcode installation is incomplete; a full installation is necessary for iOS and macOS development.
      Download at: https://developer.apple.com/xcode/download/
      Or install Xcode via the App Store.
      Once installed, run:
        sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
        sudo xcodebuild -runFirstLaunch
    ✗ CocoaPods not installed.
        CocoaPods is used to retrieve the iOS and macOS platform side's plugin code that responds to your plugin usage on the Dart side.
        Without CocoaPods, plugins will not work on iOS or macOS.
        For more info, see https://flutter.dev/platform-plugins
      To install see https://guides.cocoapods.org/using/getting-started.html#installation for instructions.
```

Based on this feedback, I had to run the following:

I use JetBrains Toolbox to manage JetBrains dependencies, hance I installed `cmdline-tools` from the `Android Studio IDE` since it is Android dependency.

Alternatively you could use the command below:

```sh
# Install cmdline-tools component
$ sdkmanager --install "cmdline-tools;latest"
```

Accept Android licenses

```sh
# Accept Android License
$ flutter doctor --android-licenses
```

Skip xcode and cocoapods installations since I won't be building ios app for now. But they can be done using commands below.

```sh
# Fix Xcode installation
$ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
$ sudo xcodebuild -runFirstLaunch

# Install CocoaPods
sudo gem install cocoapods
```

## Additional Resources

* [Install](https://docs.flutter.dev/get-started/install) Flutter
* [How To Install Flutter on macOS](https://levelup.gitconnected.com/how-to-install-flutter-on-macos-6e65dc592449) | LevelUp | Medium
* [Update the IDE and SDK tools](https://developer.android.com/studio/intro/update#sdk-manager) | Android official
* [Flutter](https://m3.material.io/develop/flutter) | Material
* [Introduction to Flutter](https://developers.google.com/learn/pathways/intro-to-flutter) | Google Developers
* [Your first flutter app](https://codelabs.developers.google.com/codelabs/flutter-codelab-first#0) | Google Developers | Codelabs

## Review Links

* https://flutter.github.io/samples/material_3.html
* 
