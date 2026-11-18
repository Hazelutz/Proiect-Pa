import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import '../molecules/molecules.dart';
import '../organisms/organisms.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FacultyAppBar(title: 'Lista Înscrișilor & Prezență'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(title: 'Seară de Șah & Blitz (18/24)'),
          const ParticipantRow(
            studentName: 'Popescu Andrei',
            institutionalEmail: 'andrei.popescu@student.unitbv.ro',
            initialPresent: true,
          ),
          const ParticipantRow(
            studentName: 'Ionescu Maria',
            institutionalEmail: 'maria.ionescu@student.unitbv.ro',
            initialPresent: true,
          ),
          const ParticipantRow(
            studentName: 'Dumitrescu Vlad',
            institutionalEmail: 'vlad.dumitrescu@student.unitbv.ro',
            initialPresent: false,
          ),
          const SizedBox(height: 16),
          FacultyButton(
            label: 'Salvează prezența',
            icon: Icons.check_circle_outline,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}