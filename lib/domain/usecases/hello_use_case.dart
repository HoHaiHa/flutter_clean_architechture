import 'package:injectable/injectable.dart';

import 'use_case.dart';

@injectable
class HelloUseCase extends UseCase<void, HelloParam> {
  HelloUseCase();

  @override
  Future<bool> call({required HelloParam params}) async {
    // TODO
    return false;
  }
}

class HelloParam {
  HelloParam();
}