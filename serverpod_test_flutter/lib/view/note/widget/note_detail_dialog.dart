import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';
import 'package:serverpod_test_flutter/repository/note_repository.dart';

class NoteDetailDialog extends HookConsumerWidget {
  const NoteDetailDialog({
    super.key,
    required this.noteId,
  });

  final int noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Note?> note = ref.watch(getNoteByIdRepositoryProvider(noteId));

    return note.when(
      data: (data) {
        if (data == null) {
          return const SizedBox.shrink();
        }

        return Dialog(
          child: Container(
            width: 500,
            height: 500,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(data.title),
                Text(data.content),
                Text(data.user!.userInfo.toString()),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    ref.read(deleteNoteRepositoryProvider(data));
                    Navigator.of(context).pop();
                  },
                  child: const Text('Delete'),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return const Text('Error');
      },
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
