import 'package:flutter/material.dart';
import '../../theme/faculty_theme.dart';

class PhotoUploadBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const PhotoUploadBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: FacultyTheme.secondaryBlue.withValues(alpha: 0.4)),
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: FacultyTheme.secondaryBlue),
            const SizedBox(height: 6),
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}