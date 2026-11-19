import 'package:material_ui/material_ui.dart';
import '../../theme/faculty_theme.dart';
import '../atoms/atoms.dart';
import '../molecules/molecules.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String category;
  final String date;
  final String location;
  final String spotsText;
  final IconData coverIcon;
  final VoidCallback onDetailsTap;

  const EventCard({
    super.key,
    required this.title,
    required this.category,
    required this.date,
    required this.location,
    required this.spotsText,
    required this.coverIcon,
    required this.onDetailsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Zona imagine reprezentativă
          Container(
            height: 120,
            width: double.infinity,
            color: FacultyTheme.primaryNavy.withValues(alpha: 0.08),
            child: Stack(
              children: [
                Center(
                  child: Icon(coverIcon, size: 48, color: FacultyTheme.primaryNavy),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: StatusBadge(text: category, color: FacultyTheme.primaryNavy),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                EventMetaRow(icon: Icons.calendar_today_outlined, text: date),
                const SizedBox(height: 4),
                EventMetaRow(icon: Icons.location_on_outlined, text: location),
                const SizedBox(height: 4),
                EventMetaRow(icon: Icons.group_outlined, text: spotsText),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: FacultyButton(
                    label: 'Vezi detalii & Înscrie-te',
                    onPressed: onDetailsTap,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}