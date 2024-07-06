import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            headlineLarge: GoogleFonts.notoSans(
                textStyle: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold)), //APPBAR
            headlineMedium: GoogleFonts.notoSans(
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)), // Details Pagetitle
            headlineSmall: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold), // Comic tile title
            bodyLarge: GoogleFonts.notoSans(
                textStyle: TextStyle(
              fontSize: 25,
            )), // details Page description
            bodyMedium: GoogleFonts.notoSans(
                textStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )), // details Page author
            bodySmall: GoogleFonts.notoSans(
                textStyle: TextStyle(fontSize: 15)), // comci tile description
            titleLarge: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey), // comic tile author
            titleSmall: GoogleFonts.notoSans(
                textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)), // search page inof,
            titleMedium: TextStyle(fontSize: 15), // searchBar
          ),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router);
  }
}
