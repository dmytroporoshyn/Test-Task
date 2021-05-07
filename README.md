## Features

* Fields validation
* Dependencies injection
* All text in separate file and ready for translate
* Custom button with progress bar
* Stacked pattern
* Json serialization for fromMap and toMap functions

## Screenshots

<img height="400" src="https://raw.githubusercontent.com/dmytroporoshyn/Test-Task/master/screenshots/screen1.png">  
<img height="400" src="https://raw.githubusercontent.com/dmytroporoshyn/Test-Task/master/screenshots/screen2.png"> 
<img height="400" src="https://raw.githubusercontent.com/dmytroporoshyn/Test-Task/master/screenshots/screen3.png">
<img height="400" src="https://raw.githubusercontent.com/dmytroporoshyn/Test-Task/master/screenshots/screen4.png">


## Project Structure

* Project used Stacked pattern, blocs located in `bloc` package
* All screens located in `ui/view`
* Custom widgets in `ui/widget`
* Project colors located in dedicated files in `ui/shared/app_colors.dart`
* Project routes in `app/router.dart`
* Services and models located in `core`

## Requirements

- Flutter SDK
- Either VS Code or Android Studio
- Both editors require Flutter & Dart plugins installation 

## Setup 

- install apk, file locate in `apk` folder
- run app using `flutter run` on your plugged phone/Android Emulator

## Plugins and Packages used

* [stacked](https://pub.dev/packages/stacked)
* [get](https://pub.dev/packages/get)
* [get_it](https://pub.dev/packages/get_it)
* [injectable](https://pub.dev/packages/injectable)
* [json_serializable](https://pub.dev/packages/json_serializable)
* [sqflite](https://pub.dev/packages/sqflite)
* [easy_localization](https://pub.dev/packages/easy_localization)