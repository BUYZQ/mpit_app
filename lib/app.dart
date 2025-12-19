import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/auth/screens/login_screen.dart';
import 'package:mpit_hack/features/auth/screens/otp_screen.dart';
import 'package:mpit_hack/features/auth/screens/register_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
      ),
      routes: {
        "/register": (context) => RegisterScreen(),
        "/login": (context) => LoginScreen(),
        "/otp": (context) => OtpScreen(),
      },
      home: StreamBuilder<AuthState>(
        stream: supabase.auth.onAuthStateChange,
        builder: (context, snapshot) {
          // Лоадер при инициализации
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          final session = supabase.auth.currentSession;

          if (session != null) {
            return const Scaffold();
          } else {
            return const RegisterScreen();
          }
        },
      ),
    );
  }
}
