import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_flutter/repository/user_repository.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';
import 'package:serverpod_test_flutter/service/user_service.dart';
import 'package:serverpod_test_flutter/view/auth/auth_view.dart';
import 'package:serverpod_test_flutter/view/note/note_view.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeServerpodClient();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLogin = useState(sessionManager.isSignedIn);
    final user = ref.watch(userServiceProvider);

    sessionManager.addListener(() {
      isLogin.value = sessionManager.isSignedIn;
    });

    useEffect(
      () {
        if (isLogin.value) {
          ref.read(getUserRepositoryProvider(sessionManager.signedInUser!.id!));
        }

        return null;
      },
      [isLogin.value],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Serverpod Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.amber,
      ),
      home: sessionManager.isSignedIn ? const NoteView() : const AuthView(),
    );
  }
}
