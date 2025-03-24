

import 'exeptions.dart';
import 'failure.dart';

class FailureConverter {
  static Failure convert(Object e) {
    if (e is ApiException) {
      return ApiFailure(e.httpCode, e.code, e.message);
    } else if (e is NoInternetException) {
      return const NoInternetFailure();
    } else if (e is ConnectionTimeoutException) {
      return const ConnectionTimeoutFailure();
    } else {
      return const UnknowFailure();
    }
  }
}
