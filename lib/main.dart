import 'package:flutter/material.dart';
import 'package:oka_admin_panel/ui/screens/auth/auth_screen.dart';
import 'package:oka_admin_panel/ui/screens/home/home_screen.dart';
import 'package:oka_admin_panel/ui/screens/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oak Admin ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RootScreen.tag,
      routes: {
        HomeScreen.tag: (context) => const HomeScreen(),
        AuthScreen.tag: (context) => const AuthScreen(),
        RootScreen.tag: (context) => const RootScreen(),
      },
    );
  }
}
