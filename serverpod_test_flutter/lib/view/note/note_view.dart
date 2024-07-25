import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';
import 'package:serverpod_test_flutter/view/note/widget/note_dialog.dart';
import 'package:serverpod_test_flutter/view/note/widget/note_list.dart';

class NoteView extends HookConsumerWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: CircularUserImage(
          userInfo: sessionManager.signedInUser,
          size: 42,
        ),
        title: Text(sessionManager.signedInUser!.userName!),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              sessionManager.signOut();
            },
          ),
        ],
      ),
      body: const NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const NoteDialog();
            },
          );
        },
        tooltip: 'Create new note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
