// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllNoteRepositoryHash() =>
    r'30fb0167684345b20a398f669e2f1af6136c3c05';

/// See also [getAllNoteRepository].
@ProviderFor(getAllNoteRepository)
final getAllNoteRepositoryProvider =
    AutoDisposeFutureProvider<List<Note>>.internal(
  getAllNoteRepository,
  name: r'getAllNoteRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllNoteRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllNoteRepositoryRef = AutoDisposeFutureProviderRef<List<Note>>;
String _$createNoteRepositoryHash() =>
    r'0d7178cec044d2813637be8cad98e41a0c098e3d';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
