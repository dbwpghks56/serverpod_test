import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';
import 'package:serverpod_test_flutter/serverpod_client.dart';
import 'package:serverpod_test_flutter/service/note_service.dart';

part 'note_repository.g.dart';

@riverpod
Future<List<Note>> getAllNoteRepository(
  GetAllNoteRepositoryRef ref,
  int userId,
  int perPage,
  int page,
) async {
  final noteList = <Note>[];
  final noteCollection = await client.note.getAllNotes(
    userId,
    perPage,
    page,
  );
  final noteRiverpod = ref.read(noteServiceProvider.notifier);

  noteRiverpod.resetNode(noteCollection);

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
      note.id = value!.id;
      noteRiverpod.addNote(note);
    },
  );
}

@riverpod
Future<void> deleteNoteRepository(
  DeleteNoteRepositoryRef ref,
  Note note,
) async {
  final noteRiverpod = ref.read(noteServiceProvider.notifier);

  await client.note
      .deleteNote(
    note,
  )
      .then(
    (value) {
      noteRiverpod.deleteNote(note);
    },
  );
}

@riverpod
Future<Note?> getNoteByIdRepository(
  GetNoteByIdRepositoryRef ref,
  int noteId,
) async {
  return await client.note.getNoteById(
    noteId,
  );
}
