// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $_remoteRepositoriesHash() =>
    r'362a295c805d83fbba9037ae975c2d6fca22130d';

/// See also [_remoteRepositories].
final _remoteRepositoriesProvider = Provider<List<MarketRepositoryInterface>>(
  _remoteRepositories,
  name: r'_remoteRepositoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $_remoteRepositoriesHash,
);
typedef _RemoteRepositoriesRef = ProviderRef<List<MarketRepositoryInterface>>;
String $_localRepositoryHash() => r'7efe0044701d7e08d9349e6a071111974c3fcf94';

/// See also [_localRepository].
final _localRepositoryProvider = Provider<MarketLocalRepositoryInterface>(
  _localRepository,
  name: r'_localRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $_localRepositoryHash,
);
typedef _LocalRepositoryRef = ProviderRef<MarketLocalRepositoryInterface>;
String $_currencyMarketPriceHash() =>
    r'ca31fb7c63400231dc1b5c0e00398daf3c4d67d3';

/// See also [_currencyMarketPrice].
class _CurrencyMarketPriceProvider extends FutureProvider<MarketPrice> {
  _CurrencyMarketPriceProvider({
    required this.currency,
  }) : super(
          (ref) => _currencyMarketPrice(
            ref,
            currency: currency,
          ),
          from: _currencyMarketPriceProvider,
          name: r'_currencyMarketPriceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $_currencyMarketPriceHash,
        );

  final AvailableCurrencyEnum currency;

  @override
  bool operator ==(Object other) {
    return other is _CurrencyMarketPriceProvider && other.currency == currency;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, currency.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _CurrencyMarketPriceRef = FutureProviderRef<MarketPrice>;

/// See also [_currencyMarketPrice].
final _currencyMarketPriceProvider = _CurrencyMarketPriceFamily();

class _CurrencyMarketPriceFamily extends Family<AsyncValue<MarketPrice>> {
  _CurrencyMarketPriceFamily();

  _CurrencyMarketPriceProvider call({
    required AvailableCurrencyEnum currency,
  }) {
    return _CurrencyMarketPriceProvider(
      currency: currency,
    );
  }

  @override
  FutureProvider<MarketPrice> getProviderOverride(
    covariant _CurrencyMarketPriceProvider provider,
  ) {
    return call(
      currency: provider.currency,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_currencyMarketPriceProvider';
}

String $_selectedCurrencyMarketPriceHash() =>
    r'9cef0636024c92796b2436dd8af6e1a5dfe5a314';

/// See also [_selectedCurrencyMarketPrice].
final _selectedCurrencyMarketPriceProvider = FutureProvider<MarketPrice>(
  _selectedCurrencyMarketPrice,
  name: r'_selectedCurrencyMarketPriceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $_selectedCurrencyMarketPriceHash,
);
typedef _SelectedCurrencyMarketPriceRef = FutureProviderRef<MarketPrice>;
String $_convertedToSelectedCurrencyHash() =>
    r'0914ae92d570d894e9d964b736d753f3a2bfe8fc';

/// See also [_convertedToSelectedCurrency].
class _ConvertedToSelectedCurrencyProvider
    extends AutoDisposeFutureProvider<double> {
  _ConvertedToSelectedCurrencyProvider({
    required this.nativeAmount,
  }) : super(
          (ref) => _convertedToSelectedCurrency(
            ref,
            nativeAmount: nativeAmount,
          ),
          from: _convertedToSelectedCurrencyProvider,
          name: r'_convertedToSelectedCurrencyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $_convertedToSelectedCurrencyHash,
        );

  final double nativeAmount;

  @override
  bool operator ==(Object other) {
    return other is _ConvertedToSelectedCurrencyProvider &&
        other.nativeAmount == nativeAmount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nativeAmount.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _ConvertedToSelectedCurrencyRef = AutoDisposeFutureProviderRef<double>;

/// See also [_convertedToSelectedCurrency].
final _convertedToSelectedCurrencyProvider =
    _ConvertedToSelectedCurrencyFamily();

class _ConvertedToSelectedCurrencyFamily extends Family<AsyncValue<double>> {
  _ConvertedToSelectedCurrencyFamily();

  _ConvertedToSelectedCurrencyProvider call({
    required double nativeAmount,
  }) {
    return _ConvertedToSelectedCurrencyProvider(
      nativeAmount: nativeAmount,
    );
  }

  @override
  AutoDisposeFutureProvider<double> getProviderOverride(
    covariant _ConvertedToSelectedCurrencyProvider provider,
  ) {
    return call(
      nativeAmount: provider.nativeAmount,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_convertedToSelectedCurrencyProvider';
}
