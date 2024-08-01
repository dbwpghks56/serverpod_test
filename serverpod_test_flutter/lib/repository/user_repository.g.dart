// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserRepositoryHash() => r'b9b4e96031bd58d892d912f0f5e736ce1d673932';

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

/// See also [getUserRepository].
@ProviderFor(getUserRepository)
const getUserRepositoryProvider = GetUserRepositoryFamily();

/// See also [getUserRepository].
class GetUserRepositoryFamily extends Family<void> {
  /// See also [getUserRepository].
  const GetUserRepositoryFamily();

  /// See also [getUserRepository].
  GetUserRepositoryProvider call(
    int userInfoId,
  ) {
    return GetUserRepositoryProvider(
      userInfoId,
    );
  }

  @override
  GetUserRepositoryProvider getProviderOverride(
    covariant GetUserRepositoryProvider provider,
  ) {
    return call(
      provider.userInfoId,
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
  String? get name => r'getUserRepositoryProvider';
}

/// See also [getUserRepository].
class GetUserRepositoryProvider extends AutoDisposeProvider<void> {
  /// See also [getUserRepository].
  GetUserRepositoryProvider(
    int userInfoId,
  ) : this._internal(
          (ref) => getUserRepository(
            ref as GetUserRepositoryRef,
            userInfoId,
          ),
          from: getUserRepositoryProvider,
          name: r'getUserRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserRepositoryHash,
          dependencies: GetUserRepositoryFamily._dependencies,
          allTransitiveDependencies:
              GetUserRepositoryFamily._allTransitiveDependencies,
          userInfoId: userInfoId,
        );

  GetUserRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userInfoId,
  }) : super.internal();

  final int userInfoId;

  @override
  Override overrideWith(
    void Function(GetUserRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserRepositoryProvider._internal(
        (ref) => create(ref as GetUserRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userInfoId: userInfoId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _GetUserRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserRepositoryProvider && other.userInfoId == userInfoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userInfoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserRepositoryRef on AutoDisposeProviderRef<void> {
  /// The parameter `userInfoId` of this provider.
  int get userInfoId;
}

class _GetUserRepositoryProviderElement extends AutoDisposeProviderElement<void>
    with GetUserRepositoryRef {
  _GetUserRepositoryProviderElement(super.provider);

  @override
  int get userInfoId => (origin as GetUserRepositoryProvider).userInfoId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
