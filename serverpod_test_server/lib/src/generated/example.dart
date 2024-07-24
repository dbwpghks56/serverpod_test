/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Example extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Example._({
    int? id,
    required this.name,
    required this.data,
  }) : super(id);

  factory Example({
    int? id,
    required String name,
    required int data,
  }) = _ExampleImpl;

  factory Example.fromJson(Map<String, dynamic> jsonSerialization) {
    return Example(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      data: jsonSerialization['data'] as int,
    );
  }

  static final t = ExampleTable();

  static const db = ExampleRepository._();

  String name;

  int data;

  @override
  _i1.Table get table => t;

  Example copyWith({
    int? id,
    String? name,
    int? data,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'data': data,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'data': data,
    };
  }

  static ExampleInclude include() {
    return ExampleInclude._();
  }

  static ExampleIncludeList includeList({
    _i1.WhereExpressionBuilder<ExampleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExampleTable>? orderByList,
    ExampleInclude? include,
  }) {
    return ExampleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Example.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Example.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ExampleImpl extends Example {
  _ExampleImpl({
    int? id,
    required String name,
    required int data,
  }) : super._(
          id: id,
          name: name,
          data: data,
        );

  @override
  Example copyWith({
    Object? id = _Undefined,
    String? name,
    int? data,
  }) {
    return Example(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      data: data ?? this.data,
    );
  }
}

class ExampleTable extends _i1.Table {
  ExampleTable({super.tableRelation}) : super(tableName: 'example') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    data = _i1.ColumnInt(
      'data',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt data;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        data,
      ];
}

class ExampleInclude extends _i1.IncludeObject {
  ExampleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Example.t;
}

class ExampleIncludeList extends _i1.IncludeList {
  ExampleIncludeList._({
    _i1.WhereExpressionBuilder<ExampleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Example.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Example.t;
}

class ExampleRepository {
  const ExampleRepository._();

  Future<List<Example>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExampleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExampleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Example>(
      where: where?.call(Example.t),
      orderBy: orderBy?.call(Example.t),
      orderByList: orderByList?.call(Example.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Example?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExampleTable>? where,
    int? offset,
    _i1.OrderByBuilder<ExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExampleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Example>(
      where: where?.call(Example.t),
      orderBy: orderBy?.call(Example.t),
      orderByList: orderByList?.call(Example.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Example?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Example>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Example>> insert(
    _i1.Session session,
    List<Example> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Example>(
      rows,
      transaction: transaction,
    );
  }

  Future<Example> insertRow(
    _i1.Session session,
    Example row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Example>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Example>> update(
    _i1.Session session,
    List<Example> rows, {
    _i1.ColumnSelections<ExampleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Example>(
      rows,
      columns: columns?.call(Example.t),
      transaction: transaction,
    );
  }

  Future<Example> updateRow(
    _i1.Session session,
    Example row, {
    _i1.ColumnSelections<ExampleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Example>(
      row,
      columns: columns?.call(Example.t),
      transaction: transaction,
    );
  }

  Future<List<Example>> delete(
    _i1.Session session,
    List<Example> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Example>(
      rows,
      transaction: transaction,
    );
  }

  Future<Example> deleteRow(
    _i1.Session session,
    Example row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Example>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Example>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExampleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Example>(
      where: where(Example.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExampleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Example>(
      where: where?.call(Example.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
