
import 'app_http_interceptor.dart';
import 'app_setup.dart';

final getIt = GetIt.instance;

mixin DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    //! Commons
    final sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    getIt.registerSingleton<AppRouter>(AppRouter());
    getIt.registerLazySingleton(() => Client());
    getIt.registerLazySingleton<AppHttpClient>(() => AppHttpClientImpl(getIt(), getIt()));
    getIt.registerLazySingleton<AppUrlCreator>(() => AppUrlCreatorImpl());
    getIt.registerLazySingleton<AppHttpInterceptor>(() => AppHttpInterceptor(getIt(), getIt()));
    getIt.registerLazySingleton<AppNetworkInfo>(() => AppNetworkInfoImpl(getIt()));

    // Utils
    getIt.registerLazySingleton<AppLogger>(() => AppLoggerImpl(getIt()));
    getIt.registerLazySingleton<Connectivity>(() => Connectivity());

    //! Features
    Future.wait([

    ]);

    //! App Setup
    getIt.registerSingleton(AppSetup(getIt()));
  }
}
