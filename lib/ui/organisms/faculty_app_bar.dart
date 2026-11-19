import 'package:material_ui/material_ui.dart';

class FacultyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;

  const FacultyAppBar({
    super.key,
    required this.title,
    this.subtitle = 'Portal Evenimente Studențești',
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(subtitle, style: const TextStyle(fontSize: 11, color: Colors.white70)),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}