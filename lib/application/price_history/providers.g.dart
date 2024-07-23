// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'9d6e088a720a2095a4061d2f27a0667df30d50c3';

/// See also [_repository].
@ProviderFor(_repository)
final _repositoryProvider =
    Provider<CoinPriceHistoryRepositoryInterface>.internal(
  _repository,
  name: r'_repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _RepositoryRef = ProviderRef<CoinPriceHistoryRepositoryInterface>;
String _$intervalOptionHash() => r'1d96ed2fccef7118b031018144165de4749ec1b4';

/// See also [_intervalOption].
@ProviderFor(_intervalOption)
final _intervalOptionProvider = Provider<MarketPriceHistoryInterval>.internal(
  _intervalOption,
  name: r'_intervalOptionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$intervalOptionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _IntervalOptionRef = ProviderRef<MarketPriceHistoryInterval>;
<<<<<<< HEAD
<<<<<<< HEAD
String _$priceHistoryHash() => r'6b820fd2086504d30bd7cd4e5c7ceb0650fc02dd';
=======
String _$priceHistoryHash() => r'54c97861c17ceb12b1d1dc6432d9f5cdfb2a6748';
>>>>>>> e4c1a772 (🚧 UI Adjustments)
=======
String _$priceHistoryHash() => r'1d1bd84b4617f71d3ce5ad98daf7009749689bb9';
>>>>>>> 91c6ba93 (feat: :sparkles: Use fetch-api-service instead of coingecko)

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

/// See also [_priceHistory].
@ProviderFor(_priceHistory)
const _priceHistoryProvider = _PriceHistoryFamily();

/// See also [_priceHistory].
class _PriceHistoryFamily extends Family<AsyncValue<List<PriceHistoryValue>>> {
  /// See also [_priceHistory].
  const _PriceHistoryFamily();

  /// See also [_priceHistory].
  _PriceHistoryProvider call({
    required MarketPriceHistoryInterval scaleOption,
    required int ucid,
  }) {
    return _PriceHistoryProvider(
      scaleOption: scaleOption,
      ucid: ucid,
    );
  }

  @override
  _PriceHistoryProvider getProviderOverride(
    covariant _PriceHistoryProvider provider,
  ) {
    return call(
      scaleOption: provider.scaleOption,
      ucid: provider.ucid,
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
  String? get name => r'_priceHistoryProvider';
}

/// See also [_priceHistory].
class _PriceHistoryProvider extends FutureProvider<List<PriceHistoryValue>> {
  /// See also [_priceHistory].
  _PriceHistoryProvider({
    required MarketPriceHistoryInterval scaleOption,
    required int ucid,
  }) : this._internal(
          (ref) => _priceHistory(
            ref as _PriceHistoryRef,
            scaleOption: scaleOption,
            ucid: ucid,
          ),
          from: _priceHistoryProvider,
          name: r'_priceHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$priceHistoryHash,
          dependencies: _PriceHistoryFamily._dependencies,
          allTransitiveDependencies:
              _PriceHistoryFamily._allTransitiveDependencies,
          scaleOption: scaleOption,
          ucid: ucid,
        );

  _PriceHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.scaleOption,
    required this.ucid,
  }) : super.internal();

  final MarketPriceHistoryInterval scaleOption;
  final int ucid;

  @override
  Override overrideWith(
    FutureOr<List<PriceHistoryValue>> Function(_PriceHistoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _PriceHistoryProvider._internal(
        (ref) => create(ref as _PriceHistoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        scaleOption: scaleOption,
        ucid: ucid,
      ),
    );
  }

  @override
  FutureProviderElement<List<PriceHistoryValue>> createElement() {
    return _PriceHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _PriceHistoryProvider &&
        other.scaleOption == scaleOption &&
        other.ucid == ucid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, scaleOption.hashCode);
    hash = _SystemHash.combine(hash, ucid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _PriceHistoryRef on FutureProviderRef<List<PriceHistoryValue>> {
  /// The parameter `scaleOption` of this provider.
  MarketPriceHistoryInterval get scaleOption;

  /// The parameter `ucid` of this provider.
  int get ucid;
}

class _PriceHistoryProviderElement
    extends FutureProviderElement<List<PriceHistoryValue>>
    with _PriceHistoryRef {
  _PriceHistoryProviderElement(super.provider);

  @override
  MarketPriceHistoryInterval get scaleOption =>
      (origin as _PriceHistoryProvider).scaleOption;
  @override
  int get ucid => (origin as _PriceHistoryProvider).ucid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
