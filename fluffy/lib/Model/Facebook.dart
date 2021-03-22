class FacebookInfo {
  String userId;
  String description;
  String accesstoken;

  FacebookInfo(this.userId, this.description, this.accesstoken);
}

class FacebookAuthException implements Exception {
  final String errorCode;
  final String message;

  FacebookAuthException(this.errorCode, this.message);
}

abstract class FacebookAuthErrorCode {
  static const CANCELLED = "CANCELLED";
  static const FAILED = "FAILED";
  static const OPERATION_IN_PROGESS = "OPERATION_IN_PROGESS";
}
