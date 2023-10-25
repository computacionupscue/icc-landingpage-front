export 'exception_microsoft_login.dart';

class ServerException implements Exception {
  const ServerException({this.message});

  final dynamic message;

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return "Server Exception";
    return "Exception: $message";
  }
}

class LogOutException extends ServerException {
  const LogOutException({super.message});
}

class InternetAccessException extends ServerException {
  InternetAccessException()
      // : super(message: apptexts.appOptions.error_access_internet);
      //TODO: usar mensaje con internacionalizacion
      : super(message: "apptexts.appOptions.error_access_internet");
}

class CacheException implements Exception {
  const CacheException();
}
