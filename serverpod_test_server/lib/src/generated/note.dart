/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Note extends _i1.TableRow implements _i1.ProtocolSerialization {
  Note._({
    int? id,
    required this.title,
    required this.content,
    required this.created,
    required this.updated,
    required this.userId,
    this.user,
  }) : super(id);

  factory Note({
    int? id,
    required String title,
    required String content,
    required DateTime created,
    required DateTime updated,
    required int userId,
    _i2.User? user,
  }) = _NoteImpl;

  factory Note.fromJson(Map<String, dynamic> jsonSerialization) {
    return Note(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      content: jsonSerialization['content'] as String,
      created: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['created']),
      updated: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updated']),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  static final t = NoteTable();

  static const db = NoteRepository._();

  String title;

  String content;

  DateTime created;

  DateTime updated;

  int userId;

  _i2.User? user;

  int? _tbUserNotesTbUserId;

  @override
  _i1.Table get table => t;

  Note copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? created,
    DateTime? updated,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'created': created.toJson(),
      'updated': updated.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      if (_tbUserNotesTbUserId != null)
        '_tbUserNotesTbUserId': _tbUserNotesTbUserId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'created': created.toJson(),
      'updated': updated.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static NoteInclude include({_i2.UserInclude? user}) {
    return NoteInclude._(user: user);
  }

  static NoteIncludeList includeList({
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    NoteInclude? include,
  }) {
    return NoteIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Note.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Note.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NoteImpl extends Note {
  _NoteImpl({
    int? id,
    required String title,
    required String content,
    required DateTime created,
    required DateTime updated,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          title: title,
          content: content,
          created: created,
          updated: updated,
          userId: userId,
          user: user,
        );

  @override
  Note copyWith({
    Object? id = _Undefined,
    String? title,
    String? content,
    DateTime? created,
    DateTime? updated,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Note(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}

class NoteImplicit extends _NoteImpl {
  NoteImplicit._({
    int? id,
    required String title,
    required String content,
    required DateTime created,
    required DateTime updated,
    required int userId,
    _i2.User? user,
    this.$_tbUserNotesTbUserId,
  }) : super(
          id: id,
          title: title,
          content: content,
          created: created,
          updated: updated,
          userId: userId,
          user: user,
        );

  factory NoteImplicit(
    Note note, {
    int? $_tbUserNotesTbUserId,
  }) {
    return NoteImplicit._(
      id: note.id,
      title: note.title,
      content: note.content,
      created: note.created,
      updated: note.updated,
      userId: note.userId,
      user: note.user,
      $_tbUserNotesTbUserId: $_tbUserNotesTbUserId,
    );
  }

  int? $_tbUserNotesTbUserId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({'_tbUserNotesTbUserId': $_tbUserNotesTbUserId});
    return jsonMap;
  }
}

class NoteTable extends _i1.Table {
  NoteTable({super.tableRelation}) : super(tableName: 'tb_note') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    created = _i1.ColumnDateTime(
      'created',
      this,
    );
    updated = _i1.ColumnDateTime(
      'updated',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    $_tbUserNotesTbUserId = _i1.ColumnInt(
      '_tbUserNotesTbUserId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString content;

  late final _i1.ColumnDateTime created;

  late final _i1.ColumnDateTime updated;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt $_tbUserNotesTbUserId;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Note.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        content,
        created,
        updated,
        userId,
        $_tbUserNotesTbUserId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class NoteInclude extends _i1.IncludeObject {
  NoteInclude._({_i2.UserInclude? user}) {
    _user = user;
  }

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => Note.t;
}

class NoteIncludeList extends _i1.IncludeList {
  NoteIncludeList._({
    _i1.WhereExpressionBuilder<NoteTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Note.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Note.t;
}

class NoteRepository {
  const NoteRepository._();

  final attachRow = const NoteAttachRowRepository._();

  Future<List<Note>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.find<Note>(
      where: where?.call(Note.t),
      orderBy: orderBy?.call(Note.t),
      orderByList: orderByList?.call(Note.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Note?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.findFirstRow<Note>(
      where: where?.call(Note.t),
      orderBy: orderBy?.call(Note.t),
      orderByList: orderByList?.call(Note.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Note?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.findById<Note>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Note>> insert(
    _i1.Session session,
    List<Note> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Note>(
      rows,
      transaction: transaction,
    );
  }

  Future<Note> insertRow(
    _i1.Session session,
    Note row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Note>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Note>> update(
    _i1.Session session,
    List<Note> rows, {
    _i1.ColumnSelections<NoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Note>(
      rows,
      columns: columns?.call(Note.t),
      transaction: transaction,
    );
  }

  Future<Note> updateRow(
    _i1.Session session,
    Note row, {
    _i1.ColumnSelections<NoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Note>(
      row,
      columns: columns?.call(Note.t),
      transaction: transaction,
    );
  }

  Future<List<Note>> delete(
    _i1.Session session,
    List<Note> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Note>(
      rows,
      transaction: transaction,
    );
  }

  Future<Note> deleteRow(
    _i1.Session session,
    Note row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Note>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Note>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NoteTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Note>(
      where: where(Note.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Note>(
      where: where?.call(Note.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class NoteAttachRowRepository {
  const NoteAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Note note,
    _i2.User user,
  ) async {
    if (note.id == null) {
      throw ArgumentError.notNull('note.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $note = note.copyWith(userId: user.id);
    await session.db.updateRow<Note>(
      $note,
      columns: [Note.t.userId],
    );
  }
}
