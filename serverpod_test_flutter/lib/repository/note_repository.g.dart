// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllNoteRepositoryHash() =>
    r'25b7db6501ae778001e61ccd1d651050aa71b720';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getAllNoteRepository].
@ProviderFor(getAllNoteRepository)
const getAllNoteRepositoryProvider = GetAllNoteRepositoryFamily();

/// See also [getAllNoteRepository].
class GetAllNoteRepositoryFamily extends Family<AsyncValue<List<Note>>> {
  /// See also [getAllNoteRepository].
  const GetAllNoteRepositoryFamily();

  /// See also [getAllNoteRepository].
  GetAllNoteRepositoryProvider call(
    int userId,
    int perPage,
    int page,
  ) {
    return GetAllNoteRepositoryProvider(
      userId,
      perPage,
      page,
    );
  }

  @override
  GetAllNoteRepositoryProvider getProviderOverride(
    covariant GetAllNoteRepositoryProvider provider,
  ) {
    return call(
      provider.userId,
      provider.perPage,
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAllNoteRepositoryProvider';
}

/// See also [getAllNoteRepository].
class GetAllNoteRepositoryProvider
    extends AutoDisposeFutureProvider<List<Note>> {
  /// See also [getAllNoteRepository].
  GetAllNoteRepositoryProvider(
    int userId,
    int perPage,
    int page,
  ) : this._internal(
          (ref) => getAllNoteRepository(
            ref as GetAllNoteRepositoryRef,
            userId,
            perPage,
            page,
          ),
          from: getAllNoteRepositoryProvider,
          name: r'getAllNoteRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAllNoteRepositoryHash,
          dependencies: GetAllNoteRepositoryFamily._dependencies,
          allTransitiveDependencies:
              GetAllNoteRepositoryFamily._allTransitiveDependencies,
          userId: userId,
          perPage: perPage,
          page: page,
        );

  GetAllNoteRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.perPage,
    required this.page,
  }) : super.internal();

  final int userId;
  final int perPage;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Note>> Function(GetAllNoteRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAllNoteRepositoryProvider._internal(
        (ref) => create(ref as GetAllNoteRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        perPage: perPage,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Note>> createElement() {
    return _GetAllNoteRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAllNoteRepositoryProvider &&
        other.userId == userId &&
        other.perPage == perPage &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAllNoteRepositoryRef on AutoDisposeFutureProviderRef<List<Note>> {
  /// The parameter `userId` of this provider.
  int get userId;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetAllNoteRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<List<Note>>
    with GetAllNoteRepositoryRef {
  _GetAllNoteRepositoryProviderElement(super.provider);

  @override
  int get userId => (origin as GetAllNoteRepositoryProvider).userId;
  @override
  int get perPage => (origin as GetAllNoteRepositoryProvider).perPage;
  @override
  int get page => (origin as GetAllNoteRepositoryProvider).page;
}

String _$createNoteRepositoryHash() =>
    r'0d7178cec044d2813637be8cad98e41a0c098e3d';

/// See also [createNoteRepository].
@ProviderFor(createNoteRepository)
const createNoteRepositoryProvider = CreateNoteRepositoryFamily();

/// See also [createNoteRepository].
class CreateNoteRepositoryFamily extends Family<AsyncValue<void>> {
  /// See also [createNoteRepository].
  const CreateNoteRepositoryFamily();

  /// See also [createNoteRepository].
  CreateNoteRepositoryProvider call(
    Note note,
  ) {
    return CreateNoteRepositoryProvider(
      note,
    );
  }

  @override
  CreateNoteRepositoryProvider getProviderOverride(
    covariant CreateNoteRepositoryProvider provider,
  ) {
    return call(
      provider.note,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createNoteRepositoryProvider';
}

/// See also [createNoteRepository].
class CreateNoteRepositoryProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createNoteRepository].
  CreateNoteRepositoryProvider(
    Note note,
  ) : this._internal(
          (ref) => createNoteRepository(
            ref as CreateNoteRepositoryRef,
            note,
          ),
          from: createNoteRepositoryProvider,
          name: r'createNoteRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createNoteRepositoryHash,
          dependencies: CreateNoteRepositoryFamily._dependencies,
          allTransitiveDependencies:
              CreateNoteRepositoryFamily._allTransitiveDependencies,
          note: note,
        );

  CreateNoteRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.note,
  }) : super.internal();

  final Note note;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateNoteRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateNoteRepositoryProvider._internal(
        (ref) => create(ref as CreateNoteRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        note: note,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateNoteRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateNoteRepositoryProvider && other.note == note;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateNoteRepositoryRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `note` of this provider.
  Note get note;
}

class _CreateNoteRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with CreateNoteRepositoryRef {
  _CreateNoteRepositoryProviderElement(super.provider);

  @override
  Note get note => (origin as CreateNoteRepositoryProvider).note;
}

String _$deleteNoteRepositoryHash() =>
    r'd099fd9bb6c4ba909511ed07977938a3e46464e1';

/// See also [deleteNoteRepository].
@ProviderFor(deleteNoteRepository)
const deleteNoteRepositoryProvider = DeleteNoteRepositoryFamily();

/// See also [deleteNoteRepository].
class DeleteNoteRepositoryFamily extends Family<AsyncValue<void>> {
  /// See also [deleteNoteRepository].
  const DeleteNoteRepositoryFamily();

  /// See also [deleteNoteRepository].
  DeleteNoteRepositoryProvider call(
    Note note,
  ) {
    return DeleteNoteRepositoryProvider(
      note,
    );
  }

  @override
  DeleteNoteRepositoryProvider getProviderOverride(
    covariant DeleteNoteRepositoryProvider provider,
  ) {
    return call(
      provider.note,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteNoteRepositoryProvider';
}

/// See also [deleteNoteRepository].
class DeleteNoteRepositoryProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteNoteRepository].
  DeleteNoteRepositoryProvider(
    Note note,
  ) : this._internal(
          (ref) => deleteNoteRepository(
            ref as DeleteNoteRepositoryRef,
            note,
          ),
          from: deleteNoteRepositoryProvider,
          name: r'deleteNoteRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteNoteRepositoryHash,
          dependencies: DeleteNoteRepositoryFamily._dependencies,
          allTransitiveDependencies:
              DeleteNoteRepositoryFamily._allTransitiveDependencies,
          note: note,
        );

  DeleteNoteRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.note,
  }) : super.internal();

  final Note note;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteNoteRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteNoteRepositoryProvider._internal(
        (ref) => create(ref as DeleteNoteRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        note: note,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteNoteRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteNoteRepositoryProvider && other.note == note;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteNoteRepositoryRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `note` of this provider.
  Note get note;
}

class _DeleteNoteRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with DeleteNoteRepositoryRef {
  _DeleteNoteRepositoryProviderElement(super.provider);

  @override
  Note get note => (origin as DeleteNoteRepositoryProvider).note;
}

String _$getNoteByIdRepositoryHash() =>
    r'acc168953a71bb0a35adc9c75e9b27b7d2b9e3a4';

/// See also [getNoteByIdRepository].
@ProviderFor(getNoteByIdRepository)
const getNoteByIdRepositoryProvider = GetNoteByIdRepositoryFamily();

/// See also [getNoteByIdRepository].
class GetNoteByIdRepositoryFamily extends Family<AsyncValue<Note?>> {
  /// See also [getNoteByIdRepository].
  const GetNoteByIdRepositoryFamily();

  /// See also [getNoteByIdRepository].
  GetNoteByIdRepositoryProvider call(
    int noteId,
  ) {
    return GetNoteByIdRepositoryProvider(
      noteId,
    );
  }

  @override
  GetNoteByIdRepositoryProvider getProviderOverride(
    covariant GetNoteByIdRepositoryProvider provider,
  ) {
    return call(
      provider.noteId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getNoteByIdRepositoryProvider';
}

/// See also [getNoteByIdRepository].
class GetNoteByIdRepositoryProvider extends AutoDisposeFutureProvider<Note?> {
  /// See also [getNoteByIdRepository].
  GetNoteByIdRepositoryProvider(
    int noteId,
  ) : this._internal(
          (ref) => getNoteByIdRepository(
            ref as GetNoteByIdRepositoryRef,
            noteId,
          ),
          from: getNoteByIdRepositoryProvider,
          name: r'getNoteByIdRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNoteByIdRepositoryHash,
          dependencies: GetNoteByIdRepositoryFamily._dependencies,
          allTransitiveDependencies:
              GetNoteByIdRepositoryFamily._allTransitiveDependencies,
          noteId: noteId,
        );

  GetNoteByIdRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.noteId,
  }) : super.internal();

  final int noteId;

  @override
  Override overrideWith(
    FutureOr<Note?> Function(GetNoteByIdRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNoteByIdRepositoryProvider._internal(
        (ref) => create(ref as GetNoteByIdRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Note?> createElement() {
    return _GetNoteByIdRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNoteByIdRepositoryProvider && other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNoteByIdRepositoryRef on AutoDisposeFutureProviderRef<Note?> {
  /// The parameter `noteId` of this provider.
  int get noteId;
}

class _GetNoteByIdRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<Note?>
    with GetNoteByIdRepositoryRef {
  _GetNoteByIdRepositoryProviderElement(super.provider);

  @override
  int get noteId => (origin as GetNoteByIdRepositoryProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
