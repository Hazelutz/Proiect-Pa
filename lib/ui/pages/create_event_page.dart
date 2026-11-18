import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import '../organisms/organisms.dart';

class CreateEventPage extends StatelessWidget {
  const CreateEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FacultyAppBar(title: 'Organizează Eveniment'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CreateEventForm(
            onSubmit: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cererea a fost trimisă și așteaptă aprobarea administratorului.'),
                ),
              );
            },
          ),
          const SizedBox(height: 28),
          const SectionTitle(title: 'Cererile mele trimise'),
          Card(
            elevation: 0,
            child: ListTile(
              title: const Text('Petrecere de început de semestru'),
              subtitle: const Text('Trimisă • Așteaptă validare admin'),
              trailing: StatusBadge(text: 'În așteptare', color: Colors.orange.shade800),
            ),
          ),
        ],
      ),
    );
  }
}