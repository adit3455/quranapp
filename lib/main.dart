import 'package:flutter/material.dart';
import 'package:quranapps/config/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
    );
  }
}
