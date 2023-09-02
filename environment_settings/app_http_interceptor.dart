import '../consts/api_consts.dart';
import '../external_services/app_http_client.dart';
import 'dart:developer' as dev;

abstract class ClientRepository{
Future<String?> getBearerToken();
}

class AppHttpInterceptor {
  final AppHttpClient httpClient;
  final ClientRepository repository;

  AppHttpInterceptor(this.httpClient, this.repository);

  Future<void> init() async {
    httpClient.addRequestHeaderCallback((uri, headers) async {
      final authToken = await repository.getBearerToken();
      if (headers.containsKey(ApiConsts.authorizationHeaderKey) == false && authToken != null) {
        dev.log(authToken, name: 'debug');
        return {ApiConsts.authorizationHeaderKey: authToken};
      }
      return {};
    });
  }
}
