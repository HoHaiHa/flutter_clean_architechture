
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../domain/enums/fetch_status.dart';

extension RefreshControllerExtension on RefreshController {
  void refresh(FetchStatus fetchStatus) {
    switch (fetchStatus) {
      case FetchStatus.loadCompleted:
        resetNoData();
        loadComplete();
      case FetchStatus.refreshCompleted:
        resetNoData();
        refreshCompleted();
      case FetchStatus.refreshFailed:
        refreshFailed();
      case FetchStatus.loadFailed:
        loadFailed();
      case FetchStatus.noMoreData:
        refreshCompleted();
        loadNoData();
      default:
        break;
    }
  }
}
