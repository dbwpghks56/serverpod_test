import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_flutter/view/note/widget/note_dialog.dart';
import 'package:serverpod_test_flutter/view/note/widget/note_list.dart';

class NoteView extends HookConsumerWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
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
