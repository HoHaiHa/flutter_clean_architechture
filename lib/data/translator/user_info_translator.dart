import '../../domain/entities/user_info.dart';
import '../remote/models/user_info_model.dart';

class UserInfoTranslator {
  static UserInfo translateToEntity(UserInfoModel model) {
    return UserInfo(
      id: model.userId,
      fullName: model.name,
    );
  }
}
