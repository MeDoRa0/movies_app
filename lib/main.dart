import 'package:flutter/material.dart';
import 'package:movies_ca/core/services/services_locator.dart';
import 'package:movies_ca/movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Movies App',
      home: MoviesScreen(),
    );
  }
}
