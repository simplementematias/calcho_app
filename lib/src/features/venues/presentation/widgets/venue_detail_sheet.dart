import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../booking/presentation/screens/booking_calendar_screen.dart';
import '../../domain/entities/court.dart';
import '../../domain/entities/venue.dart';
import '../providers/venues_provider.dart';

class VenueDetailSheet extends ConsumerWidget {
  const VenueDetailSheet({
    required this.venue,
    super.key,
  });

  final Venue venue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final courtsAsync = ref.watch(venueCourtsProvider(venue.id));
    final primaryBlue = const Color(0xFF1D4ED8);

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        child: ColoredBox(
          color: theme.colorScheme.surface,
          child: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 42,
                      height: 5,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    venue.name,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    venue.addressLine,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _QuickInfoCard(
                          icon: Icons.sports_soccer_rounded,
                          label: 'Canchas',
                          value: '${venue.supportedSports.length} deportes',
                          tint: primaryBlue,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: courtsAsync.when(
                          data: (courts) => _QuickInfoCard(
                            icon: Icons.groups_rounded,
                            label: 'Capacidad',
                            value: _capacityLabel(courts),
                            tint: primaryBlue,
                          ),
                          loading: () => const _QuickInfoCardPlaceholder(),
                          error: (_, _) => _QuickInfoCard(
                            icon: Icons.groups_rounded,
                            label: 'Capacidad',
                            value: '--',
                            tint: primaryBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Canchas',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (courtsAsync.isLoading) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(99),
                      child: const LinearProgressIndicator(minHeight: 4),
                    ),
                    const SizedBox(height: 12),
                  ],
                  Flexible(
                    child: courtsAsync.when(
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (error, _) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          'No pudimos cargar las canchas: $error',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                      ),
                      data: (courts) {
                        if (courts.isEmpty) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text('Esta sede aun no tiene canchas cargadas.'),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          itemCount: courts.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final realtimeCourt = courts[index];
                            return _CourtTile(
                              court: realtimeCourt.court,
                              isAvailable: realtimeCourt.isAvailable,
                              onReserve: realtimeCourt.isAvailable
                                  ? () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute<void>(
                                          builder: (_) => BookingCalendarScreen(
                                            venue: venue,
                                            court: realtimeCourt.court,
                                          ),
                                        ),
                                      );
                                    }
                                  : null,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _capacityLabel(List<CourtRealtimeView> courts) {
    if (courts.isEmpty) {
      return '--';
    }
    final maxCapacity = courts
        .map((court) => court.court.capacity)
        .reduce((a, b) => a > b ? a : b);
    return 'Hasta $maxCapacity jug.';
  }
}

class _QuickInfoCard extends StatelessWidget {
  const _QuickInfoCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.tint,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color tint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: tint.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: tint.withValues(alpha: 0.16),
              child: Icon(icon, size: 18, color: tint),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickInfoCardPlaceholder extends StatelessWidget {
  const _QuickInfoCardPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}

class _CourtTile extends StatelessWidget {
  const _CourtTile({
    required this.court,
    required this.isAvailable,
    this.onReserve,
  });

  final Court court;
  final bool isAvailable;
  final VoidCallback? onReserve;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColor = isAvailable ? const Color(0xFF16A34A) : const Color(0xFFDC2626);

    return Material(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onReserve,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      court.name,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${_sportLabel(court.sportType)} · ${court.capacity} jugadores',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 34,
                      child: FilledButton(
                        onPressed: isAvailable ? onReserve : null,
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFF1D4ED8),
                          disabledBackgroundColor:
                              theme.colorScheme.surfaceContainerHighest,
                        ),
                        child: const Text('Reservar'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Text(
                  isAvailable ? 'Disponible' : 'Ocupada',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _sportLabel(SportType sportType) {
    switch (sportType) {
      case SportType.football:
        return 'Futbol 11';
      case SportType.futsal:
        return 'Futbol 5';
      case SportType.padel:
        return 'Padel';
      case SportType.tennis:
        return 'Tenis';
      case SportType.basketball:
        return 'Basket';
      case SportType.volleyball:
        return 'Voley';
      case SportType.baseball:
        return 'Beisbol';
      case SportType.multiSport:
        return 'Multideporte';
    }
  }
}
