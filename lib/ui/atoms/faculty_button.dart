import 'package:material_ui/material_ui.dart';
import '../../theme/faculty_theme.dart';

class FacultyButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool isOutlined;

  const FacultyButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      backgroundColor: isOutlined ? Colors.white : FacultyTheme.primaryNavy,
      foregroundColor: isOutlined ? FacultyTheme.primaryNavy : Colors.white,
      side: isOutlined ? const BorderSide(color: FacultyTheme.primaryNavy) : null,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );

    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 18),
        label: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        style: style,
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}