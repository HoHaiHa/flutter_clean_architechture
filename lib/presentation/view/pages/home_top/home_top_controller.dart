import 'package:flutter_source_base/presentation/base/base_controller.dart';
import 'package:flutter_source_base/presentation/base/page_status.dart';
import 'package:flutter_source_base/presentation/views/pages/home_top/home_top_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeTopController extends BaseController<HomeTopState> {
  HomeTopController() : super(const HomeTopState());

  @override
  Future<void> initData() async {
    state = state.copyWith(pageStatus: PageStatus.Loaded);
  }

  @override
  HomeTopState createEmptyState() {
    return const HomeTopState();
  }
}
