
# Base Project Flutter with Getx




## Packages

- [State management: Getx](https://pub.dev/packages/get)
- Localization: Getx
- Navigation: Getx
- DI: Getx
- [Network: dio](https://pub.dev/packages/dio)
- [Flavors: production, dev, staging](https://docs.flutter.dev/deployment/flavors)
- [Model generator: Freezed](https://pub.dev/packages/freezed)
- [Dio client generator: retrofit](https://pub.dev/packages/retrofit)
- [Localization generator: get_cli](https://pub.dev/packages/get_cli)
- ...



## Installation

Generate code command:

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Generate localiztion 
```bash
get generate locales assets/translations 
```

## Build
Build APK:  
- Dev: flutter build apk --release --dart-define flavor=dev --flavor dev -t lib/main.dart
- Staging: flutter build apk --release --dart-define flavor=staging --flavor staging -t lib/main.dart
- Production: flutter build apk --release --dart-define flavor=production --flavor production -t lib/main.dart
Build Appbundle:
- Dev: flutter build appbundle --release --dart-define flavor=dev --flavor dev -t lib/main.dart
- Staging: flutter build appbundle --release --dart-define flavor=staging --flavor staging -t lib/main.dart
- Production: flutter build appbundle --release --dart-define flavor=production --flavor production -t lib/main.dart