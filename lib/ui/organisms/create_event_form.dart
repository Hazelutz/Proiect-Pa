import 'package:flutter/material.dart';
import '../atoms/atoms.dart';
import '../molecules/molecules.dart';

class CreateEventForm extends StatelessWidget {
  final VoidCallback onSubmit;

  const CreateEventForm({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionTitle(title: 'Propune un eveniment nou'),
        const FacultyInput(
          label: 'Titlul evenimentului',
          hint: 'Ex: Seară de șah - Cupa Facultății',
          icon: Icons.title,
        ),
        const SizedBox(height: 12),
        const FacultyInput(
          label: 'Link extern (opțional)',
          hint: 'https://...',
          icon: Icons.link,
        ),
        const SizedBox(height: 12),
        const FacultyInput(
          label: 'Descriere',
          hint: 'Detalii despre program, regulament...',
          icon: Icons.description_outlined,
          maxLines: 3,
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            Expanded(
              child: FacultyInput(
                label: 'Data și ora',
                hint: '25 Nov, 18:00',
                icon: Icons.event,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FacultyInput(
                label: 'Max. participanți',
                hint: 'Ex: 32',
                icon: Icons.people_outline,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const FacultyInput(
          label: 'Locația',
          hint: 'Ex: Corp A, Sala P1 / Cămin',
          icon: Icons.location_on_outlined,
        ),
        const SizedBox(height: 14),
        const PhotoUploadBox(
          title: 'Încarcă imaginea reprezentativă',
          subtitle: 'Format JPG sau PNG (coperta evenimentului)',
          icon: Icons.add_photo_alternate_outlined,
        ),
        const SizedBox(height: 10),
        const PhotoUploadBox(
          title: 'Adaugă fotografii suplimentare',
          subtitle: 'Poți selecta mai multe poze din galerie',
          icon: Icons.collections_outlined,
        ),
        const SizedBox(height: 18),
        FacultyButton(
          label: 'Trimite cererea spre aprobare',
          icon: Icons.send,
          onPressed: onSubmit,
        ),
      ],
    );
  }
}