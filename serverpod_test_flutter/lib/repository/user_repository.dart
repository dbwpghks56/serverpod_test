import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';
import 'package:serverpod_test_flutter/service/user_service.dart';

part 'user_repository.g.dart';

@riverpod
void getUserRepository(
  GetUserRepositoryRef ref,
  int userInfoId,
) async {
  final user = ref.read(userServiceProvider.notifier);

  await client.user.getUser(userInfoId).then((value) {
    user.resetUser(value!);
  });
}
