import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/Log_in.dart';
import 'Screens/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Check if a user is already logged in
  User? user = FirebaseAuth.instance.currentUser;

  runApp(
      MyApp(initialRoute: user != null ? const MainPage() : const LoginPage()));
}

class MyApp extends StatelessWidget {
  final Widget initialRoute;

  const MyApp({Key? key, required this.initialRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set the initialRoute based on the user's authentication status
      initialRoute: '/',
      routes: {
        '/': (context) => initialRoute,
        '/login': (context) => const LoginPage(),
        '/mainPage': (context) => const MainPage(),
      },
    );
  }
}
