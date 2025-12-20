import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/auth/screens/login_screen.dart';
import 'package:mpit_hack/features/auth/screens/otp_gosuslugi_screen.dart';
import 'package:mpit_hack/features/auth/screens/otp_screen.dart';
import 'package:mpit_hack/features/auth/screens/register_screen.dart';
import 'package:mpit_hack/features/reseipts/screens/reseipts_stat_screen.dart';
import 'package:mpit_hack/features/statement/screens/confirm_statement_screen.dart';
import 'package:mpit_hack/features/payment/screens/payment_methods_screens.dart';
import 'package:mpit_hack/features/payment/screens/payment_screen.dart';
import 'package:mpit_hack/features/reseipts/screens/reseipts_screen.dart';
import 'package:mpit_hack/features/statement/screens/statement_history_screen.dart';
import 'package:mpit_hack/features/statement/screens/statement_screen.dart';
import 'package:mpit_hack/features/root/root_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroudAppColor,
      ),
      routes: {
        "/register": (context) => RegisterScreen(),
        "/login": (context) => LoginScreen(),
        "/otp": (context) => OtpScreen(),
        "/otp_gosuslugi": (context) => OtpGosuslugiScreen(),
        "/statement": (context) => StatementScreen(),
        "/statement_confirm": (context) => StatementConfirmScreen(),
        "/statement_history": (context) => StatementHistoryScreen(),
        "/receipts": (context) => ReceiptsScreen(),
        "/receipts_stat": (context) => ReseiptsStatScreen(),
        "/payment": (context) => PaymentScreen(),
        "/payment_methods": (context) => PaymentMethodsScreen(),
        "/root": (context) => RootScreen(),
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
