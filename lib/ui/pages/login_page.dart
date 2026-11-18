import 'package:flutter/material.dart';
import '../../theme/faculty_theme.dart';
import '../atoms/atoms.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onLoginSuccess;

  const LoginPage({super.key, required this.onLoginSuccess});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.school, size: 64, color: FacultyTheme.primaryNavy),
              const SizedBox(height: 16),
              const Text(
                'Evenimente Facultate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: FacultyTheme.primaryNavy,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Autentificarea este permisă doar cu adresa de e-mail instituțională confirmată.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
              ),
              const SizedBox(height: 28),
              const FacultyInput(
                label: 'E-mail instituțional',
                hint: 'prenume.nume@student.unitbv.ro',
                icon: Icons.alternate_email,
              ),
              const SizedBox(height: 12),
              const FacultyInput(
                label: 'Parolă',
                hint: '••••••••',
                icon: Icons.lock_outline,
              ),
              const SizedBox(height: 20),
              FacultyButton(
                label: 'Intră în contul de student',
                icon: Icons.login,
                onPressed: onLoginSuccess,
              ),
            ],
          ),
        ),
      ),
    );
  }
}