import 'package:injectable/injectable.dart';
import '../../domain/repositories/hello_repository.dart';

@Injectable(as: HelloRepository)
class HelloRepositoryImpl extends HelloRepository {
  HelloRepositoryImpl();
}