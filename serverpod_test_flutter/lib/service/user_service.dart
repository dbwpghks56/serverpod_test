import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';

part 'user_service.g.dart';

@riverpod
class UserService extends _$UserService {
  @override
  User build() {
    return User(userInfoId: 0);
  }

  void resetUser(User user) {
    state = user;
  }
}
