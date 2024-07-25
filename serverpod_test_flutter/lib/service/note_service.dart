import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';

part 'note_service.g.dart';

@riverpod
class NoteService extends _$NoteService {
  @override
  List<Note> build() {
    return const [];
  }

  void addNote(Note note) {
    state = [...state, note];
  }

  void deleteNote(Note note) {
    state = state.where((n) => n.id != note.id).toList();
  }
}
