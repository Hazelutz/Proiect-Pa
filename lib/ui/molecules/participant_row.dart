import 'package:flutter/material.dart';
import '../../theme/faculty_theme.dart';

class ParticipantRow extends StatefulWidget {
  final String studentName;
  final String institutionalEmail;
  final bool initialPresent;

  const ParticipantRow({
    super.key,
    required this.studentName,
    required this.institutionalEmail,
    this.initialPresent = false,
  });

  @override
  State<ParticipantRow> createState() => _ParticipantRowState();
}

class _ParticipantRowState extends State<ParticipantRow> {
  late bool _isPresent;

  @override
  void initState() {
    super.initState();
    _isPresent = widget.initialPresent;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 8),
      child: CheckboxListTile(
        activeColor: FacultyTheme.primaryNavy,
        value: _isPresent,
        onChanged: (val) => setState(() => _isPresent = val ?? false),
        title: Text(widget.studentName, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(widget.institutionalEmail, style: const TextStyle(fontSize: 12)),
        secondary: CircleAvatar(
          backgroundColor: FacultyTheme.primaryNavy.withValues(alpha: 0.1),
          child: Text(widget.studentName[0]),
        ),
      ),
    );
  }
}