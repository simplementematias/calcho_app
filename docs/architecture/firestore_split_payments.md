# Firestore Split Payments - CourtReserve

## Colecciones

- `venues/{venueId}`
- `courts/{courtId}` (opcional; también puede anidarse bajo venue)
- `bookings/{bookingId}`
- `bookings/{bookingId}/transactions/{txId}`
- `users/{userId}`

## Documento Booking (ejemplo)

```json
{
  "id": "booking_001",
  "venueId": "venue_ccs_01",
  "courtId": "court_a",
  "createdByUserId": "user_123",
  "participantUserIds": ["user_123", "user_456"],
  "startAt": "2026-02-20T18:00:00Z",
  "endAt": "2026-02-20T20:00:00Z",
  "totalPriceCents": 3000,
  "approvedAmountCents": 1500,
  "currencyCode": "USD",
  "status": "partiallyPaid",
  "createdAt": "2026-02-19T10:00:00Z",
  "updatedAt": "2026-02-19T10:05:00Z"
}
```

## Documento Transaction (subcolección)

```json
{
  "id": "tx_001",
  "bookingId": "booking_001",
  "payerUserId": "user_123",
  "amountCents": 1000,
  "currencyCode": "USD",
  "method": "zelle",
  "status": "approved",
  "referenceCode": "ZELLE-7781",
  "proofUrl": "gs://courtreserve/payments/tx_001.png",
  "createdAt": "2026-02-19T10:01:00Z",
  "reviewedByAdminId": "admin_01",
  "reviewedAt": "2026-02-19T10:03:00Z",
  "reviewComment": "Comprobante validado"
}
```

## Regla de confirmación

Una reserva pasa a `confirmed` cuando:

`sum(transactions where status == approved).amountCents >= booking.totalPriceCents`

## Estrategia recomendada

1. El cliente crea transacción `pending` y sube comprobante.
2. El admin aprueba o rechaza la transacción.
3. Una Cloud Function (trigger onWrite en `transactions`) recalcula `approvedAmountCents`.
4. La misma función actualiza `bookings/{bookingId}.status`:
   - `confirmed` si `approvedAmountCents >= totalPriceCents`
   - `partiallyPaid` si `approvedAmountCents > 0 && approvedAmountCents < totalPriceCents`
   - `pendingPayment` si `approvedAmountCents == 0`

## Consideraciones de concurrencia

- Ejecutar agregación en transacción de Firestore para evitar condiciones de carrera.
- No confiar en cálculos del cliente para `approvedAmountCents` o `status`.
- Mantener `approvedAmountCents` denormalizado para lecturas rápidas en listados/historial.
