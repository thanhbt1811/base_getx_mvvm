enum Flavor {
  development,
  staging,
  production,
}

Flavor getFlavorFromEnv(String flavor) {
  switch (flavor) {
    case 'dev':
      return Flavor.development;
    case 'staging':
      return Flavor.staging;
    case 'production':
      return Flavor.production;
    default:
      return Flavor.development;
  }
}
