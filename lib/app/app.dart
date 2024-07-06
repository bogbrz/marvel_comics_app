import 'package:flutter/material.dart';
import 'package:mood_up_recruitment_task/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            headlineMedium:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
              fontSize: 15,
            ),
            bodySmall: TextStyle(
              fontSize: 15,
            ),
            titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(
              fontSize: 15,
            ),
          ),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router);
  }
}
