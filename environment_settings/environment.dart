import 'app_config.dart';

class Environment {
  static final dev = AppConfig(
    appName: 'Meu App Dev',
    appEnvironment: AppEnvironment.development,
    apiBaseUrl: 'dev.api.base.com.br',
    timeout: 120000,
  );

  static final hml = AppConfig(
    appName: 'Meu App Hml',
    appEnvironment: AppEnvironment.homolog,
    apiBaseUrl: 'hml.api.base.com.br',
    timeout: 120000,
  );

  static final prod = AppConfig(
    appName: 'Meu App',
    appEnvironment: AppEnvironment.production,
    apiBaseUrl: 'api.base.com.br',
    timeout: 120000,
  );
}
