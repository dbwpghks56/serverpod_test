import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class NoteEndpoint extends Endpoint {
  Future<void> createNote(Session session, Note note) async {
    await Note.db.insertRow(session, note);
  }

  Future<void> deleteNote(Session session, Note note) async {
    await Note.db.deleteRow(session, note);
  }

  Future<List<Note>> getAllNotes(
    Session session,
    int userId,
    int perPage,
    int page,
  ) async {
    return await Note.db.find(
      session,
      where: (note) => note.userId.equals(userId),
      limit: perPage,
      offset: (page - 1) * perPage,
      orderBy: (note) => note.created,
    );
  }

  Future<Note?> getNoteById(
    Session session,
    int noteId,
  ) async {
    return await Note.db.findById(
      session,
      noteId,
    );
  }
}
