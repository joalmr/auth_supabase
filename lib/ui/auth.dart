import 'package:auth_supabase/data/auth_google.dart';
import 'package:auth_supabase/ui/success.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthSupabase authSupabase = AuthSupabase();

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Google Auth Supabase"),
              TextButton(
                child: const Text("Login"),
                onPressed: () async {
                  final dataAuth = await authSupabase.signInWithGoogle();

                  if (dataAuth.session?.accessToken != null &&
                      context.mounted) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SuccessView(),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
