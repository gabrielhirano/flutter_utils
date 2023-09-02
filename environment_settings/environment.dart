import 'app_config.dart';

class Environment {
  static final dev = AppConfig(
    appName: 'Meu App Dev',
    appEnvironment: AppEnvironment.development,
    apiBaseUrl: 'dev.apparaujo.araujo.com.br',
    timeout: 120000,
  );

  static final hml = AppConfig(
    appName: 'Meu App Hml',
    appEnvironment: AppEnvironment.homolog,
    apiBaseUrl: 'hml.apparaujo.araujo.com.br',
    timeout: 120000,
  );

  static final prod = AppConfig(
    appName: 'Meu App',
    appEnvironment: AppEnvironment.production,
    apiBaseUrl: 'apparaujo.araujo.com.br',
    timeout: 120000,
  );
}
