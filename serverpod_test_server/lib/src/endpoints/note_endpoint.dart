import 'package:serverpod/server.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

import '../generated/protocol.dart';

class NoteEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Note?> createNote(Session session, Note note) async {
    return await Note.db.insertRow(session, note);
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
      include: Note.include(
        user: User.include(
          userInfo: UserInfo.include(),
        ),
      ),
    );
  }
}
