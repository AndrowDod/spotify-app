import 'package:flutter/material.dart';
import 'package:spotify_app/routes/bottom_navigator.dart';
import 'package:spotify_app/routes/song_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/songpage': (context) => const SongPage(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const NavigatorPage());
  }
}
