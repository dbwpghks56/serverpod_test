import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';
import 'package:serverpod_test_flutter/main.dart';
import 'package:serverpod_test_flutter/service/note_service.dart';

part 'note_repository.g.dart';

@riverpod
Future<List<Note>> getAllNoteRepository(
  GetAllNoteRepositoryRef ref,
) async {
  final noteList = <Note>[];
  final noteCollection = await client.note.getAllNotes();
  final noteRiverpod = ref.read(noteServiceProvider.notifier);

  for (final note in noteCollection) {
    noteList.add(note);
    noteRiverpod.addNote(note);
  }

  return noteList;
}

@riverpod
Future<void> createNoteRepository(
  CreateNoteRepositoryRef ref,
  Note note,
) async {
  final noteRiverpod = ref.read(noteServiceProvider.notifier);

  await client.note
      .createNote(
    note,
  )
      .then(
    (value) {
      noteRiverpod.addNote(note);
    },
  );
}
