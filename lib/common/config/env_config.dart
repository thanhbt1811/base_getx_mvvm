import '../enum/flavor_enum.dart';
import 'flavor_config.dart';

class Environment {
  final String baseUrl;

  static Environment? _instance;

  factory Environment({
    required String baseUrl,
  }) {
    switch (FlavorConfig.instance.flavor) {
      case Flavor.development:
        baseUrl = "http://localhost:8080/api/";
        break;
      case Flavor.staging:
        baseUrl = "b";
        break;
      case Flavor.production:
        baseUrl = "c";
        break;
      default:
        break;
    }
    _instance ??= Environment._internal(
      baseUrl,
    );
    return _instance!;
  }

  Environment._internal(
    this.baseUrl,
  );

  static Environment get instance {
    return _instance ??
        Environment(
          baseUrl: "",
        );
  }
}
