import 'package:flutter/material.dart';
import 'package:named_routes/pages/intro_page.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          backgroundColor: Colors.cyan,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18
          )
        )
      ),
      home: IntroPage(),
      routes: {
        '/homepage':(context)=> const HomePage(),
        '/intropage' : (context)=> const IntroPage()
      },
    );
  }
}
