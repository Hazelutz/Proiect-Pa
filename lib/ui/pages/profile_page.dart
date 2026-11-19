import 'package:material_ui/material_ui.dart';
import '../../theme/faculty_theme.dart';
import '../atoms/atoms.dart';
import '../organisms/organisms.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback onLogout;

  const ProfilePage({super.key, required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FacultyAppBar(title: 'Profil Student'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: FacultyTheme.primaryNavy,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Student Organizator',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: StatusBadge(
              text: 'E-mail instituțional confirmat',
              color: Colors.green.shade700,
            ),
          ),
          const SizedBox(height: 20),
          const AccountDisciplineCard(strikesCount: 0),
          const SizedBox(height: 20),
          FacultyButton(
            label: 'Deconectare',
            icon: Icons.logout,
            isOutlined: true,
            onPressed: onLogout,
          ),
        ],
      ),
    );
  }
}