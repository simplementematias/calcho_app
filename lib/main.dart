import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Asegúrate de que esta ruta sea correcta según donde Cursor creó tu pantalla
// Si te marca error rojo aquí, borra la línea y escribe "import" para que autocompletar la encuentre.
import 'src/features/venues/presentation/screens/venues_map_screen.dart';
import 'src/features/venues/presentation/providers/venues_provider.dart';
import 'src/features/venues/domain/repositories/venue_repository.dart';
import 'src/features/venues/data/repositories/venue_repository_fallback_impl.dart';
import 'src/features/venues/data/repositories/venue_repository_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var firebaseReady = false;

  // --- INICIALIZACIÓN DE FIREBASE ---
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseReady = true;
    debugPrint("Firebase inicializado");
  } catch (e) {
    debugPrint("Error inicializando Firebase: $e");
  }

  final VenueRepository venueRepository = firebaseReady
      ? VenueRepositoryImpl(
          firestore: FirebaseFirestore.instance,
        )
      : VenueRepositoryFallbackImpl();

  runApp(
    ProviderScope(
      overrides: [
        venueRepositoryProvider.overrideWith(
          (ref) => venueRepository,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CourtReserve',
      debugShowCheckedModeBanner: false, // Quita la etiqueta "DEBUG" de la esquina
      theme: ThemeData(
        // Un azul vibrante tipo "Deporte"
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2196F3)),
        useMaterial3: true,
      ),
      // Esta es la primera pantalla que verá tu usuario
      home: const VenuesMapScreen(), 
    );
  }
}