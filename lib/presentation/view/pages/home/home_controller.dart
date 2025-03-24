
import 'package:injectable/injectable.dart';

@injectable
class HomeController extends BaseController<HomeState> {
  HomeController() : super(const HomeState());

  @override
  HomeState createEmptyState() {
    return const HomeState();
  }
}
