import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_flutter/repository/note_repository.dart';
import 'package:serverpod_test_flutter/service/note_service.dart';

class NoteView extends HookConsumerWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(noteServiceProvider);

    useEffect(() {
      ref.watch(getAllNoteRepositoryProvider);
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].content),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Create a new note
        },
        tooltip: 'Create new note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
