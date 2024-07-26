import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';
import 'package:serverpod_test_flutter/repository/note_repository.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';

class NoteDialog extends HookConsumerWidget {
  const NoteDialog({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleInputController = useTextEditingController();
    final contentInputController = useTextEditingController();

    return Dialog(
      child: Container(
        width: 500,
        height: 500,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleInputController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: contentInputController,
              decoration: const InputDecoration(
                labelText: 'Content',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                ref.read(createNoteRepositoryProvider(
                  Note(
                    title: titleInputController.text,
                    content: contentInputController.text,
                    created: DateTime.now(),
                    updated: DateTime.now(),
                    userId: sessionManager.signedInUser!.id!,
                  ),
                ));
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
