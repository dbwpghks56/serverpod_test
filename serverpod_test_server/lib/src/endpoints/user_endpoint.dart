import 'package:serverpod/serverpod.dart';
import 'package:serverpod_test_server/src/generated/user.dart';

class UserEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<User?> getUser(Session session, int userInfoId) async {
    return await User.db.findFirstRow(
      session,
      where: (user) => user.userInfo.id.equals(userInfoId),
    );
  }
}
