/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Note implements _i1.SerializableModel {
  Note._({
    this.id,
    required this.title,
    required this.content,
    required this.created,
    required this.updated,
  });

  factory Note({
    int? id,
    required String title,
    required String content,
    required DateTime created,
    required DateTime updated,
  }) = _NoteImpl;

  factory Note.fromJson(Map<String, dynamic> jsonSerialization) {
    return Note(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      content: jsonSerialization['content'] as String,
      created: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['created']),
      updated: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updated']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String content;

  DateTime created;

  DateTime updated;

  Note copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? created,
    DateTime? updated,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'created': created.toJson(),
      'updated': updated.toJson(),
    };
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
  }) : super._(
          id: id,
          title: title,
          content: content,
          created: created,
          updated: updated,
        );

  @override
  Note copyWith({
    Object? id = _Undefined,
    String? title,
    String? content,
    DateTime? created,
    DateTime? updated,
  }) {
    return Note(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
