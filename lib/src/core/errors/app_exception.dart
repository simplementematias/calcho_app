sealed class AppException implements Exception {
  const AppException(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

final class ServerException extends AppException {
  const ServerException([super.message = 'Server error']);
}

final class PermissionException extends AppException {
  const PermissionException([super.message = 'Permission denied']);
}

final class NotFoundException extends AppException {
  const NotFoundException([super.message = 'Resource not found']);
}
