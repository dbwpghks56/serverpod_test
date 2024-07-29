import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_flutter/repository/note_repository.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';
import 'package:serverpod_test_flutter/service/note_service.dart';

class NoteList extends HookConsumerWidget {
  const NoteList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(noteServiceProvider);

    useEffect(() {
      ref.watch(getAllNoteRepositoryProvider(
        sessionManager.signedInUser!.id!,
        10,
        1,
      ));
      return null;
    }, []);

    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].content),
            onTap: () {},
            trailing: IconButton(
              color: Colors.red[200],
              icon: const Icon(Icons.delete),
              onPressed: () {
                ref.read(deleteNoteRepositoryProvider(notes[index]));
              },
            ));
      },
    );
  }
}
