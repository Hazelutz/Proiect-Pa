import 'package:material_ui/material_ui.dart';
import '../atoms/atoms.dart';
import '../organisms/organisms.dart';

class EventsFeedPage extends StatefulWidget {
  const EventsFeedPage({super.key});

  @override
  State<EventsFeedPage> createState() => _EventsFeedPageState();
}

class _EventsFeedPageState extends State<EventsFeedPage> {
  String _selectedCategory = 'Toate';
  final List<String> _categories = ['Toate', 'Șah', 'Workshop', 'Turnee', 'Petreceri'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FacultyAppBar(title: 'Evenimente Studențești'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Filtre categorii
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _categories
                  .map((cat) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: CategoryChip(
                          label: cat,
                          isSelected: _selectedCategory == cat,
                          onTap: () => setState(() => _selectedCategory = cat),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
          const SectionTitle(title: 'Evenimente aprobate'),
          EventCard(
            title: 'Seară de Șah & Blitz',
            category: 'Șah',
            date: 'Vineri, 20 Nov • 18:30',
            location: 'Corp N, Sala NI2',
            spotsText: '18 / 24 locuri ocupate',
            coverIcon: Icons.extension,
            onDetailsTap: () {},
          ),
          EventCard(
            title: 'Workshop Flutter & UI Design',
            category: 'Workshop',
            date: 'Marți, 24 Nov • 16:00',
            location: 'Aula Universității',
            spotsText: '35 / 40 locuri ocupate',
            coverIcon: Icons.code,
            onDetailsTap: () {},
          ),
          EventCard(
            title: 'Turneu FIFA & Boardgames',
            category: 'Turnee',
            date: 'Sâmbătă, 28 Nov • 14:00',
            location: 'Complex Studențesc Colina',
            spotsText: '12 / 16 echipe',
            coverIcon: Icons.emoji_events_outlined,
            onDetailsTap: () {},
          ),
        ],
      ),
    );
  }
}