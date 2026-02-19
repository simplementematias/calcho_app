// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venues_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$venueRepositoryHash() => r'2f7d5c1735df3f2d6ff8a9f89b2d3fbc91e511ec';

/// See also [venueRepository].
@ProviderFor(venueRepository)
final venueRepositoryProvider = Provider<VenueRepository>.internal(
  venueRepository,
  name: r'venueRepositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$venueRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VenueRepositoryRef = ProviderRef<VenueRepository>;
String _$venuesListHash() => r'f95cd830ce74d77422dbbd0ed2de74de9e9e0b90';

/// See also [venuesList].
@ProviderFor(venuesList)
final venuesListProvider = AutoDisposeStreamProvider<List<Venue>>.internal(
  venuesList,
  name: r'venuesListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$venuesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VenuesListRef = AutoDisposeStreamProviderRef<List<Venue>>;
