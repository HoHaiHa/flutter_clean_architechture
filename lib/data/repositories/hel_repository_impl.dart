import 'package:injectable/injectable.dart';
import '../../domain/repositories/hel_repository.dart';

@Injectable(as: HelRepository)
class HelRepositoryImpl extends HelRepository {
  HelRepositoryImpl();
}