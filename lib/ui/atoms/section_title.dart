import 'package:flutter/material.dart';
import '../../theme/faculty_theme.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(width: 4, height: 18, color: FacultyTheme.accentGold),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: FacultyTheme.primaryNavy,
            ),
          ),
        ],
      ),
    );
  }
}