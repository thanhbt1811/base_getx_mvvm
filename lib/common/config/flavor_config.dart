import 'package:flutter/foundation.dart';

import '../enum/flavor_enum.dart';

class FlavorConfig {
  final Flavor flavor;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
  }) {
    _instance ??= FlavorConfig._internal(flavor);
    if (kDebugMode) {
      print('Flavor: $flavor');
    }
    return _instance!;
  }

  FlavorConfig._internal(this.flavor);

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isDevelopment() => _instance!.flavor == Flavor.development;
  static bool isStaging() => _instance!.flavor == Flavor.staging;
  static bool isProduction() => _instance!.flavor == Flavor.production;
}
