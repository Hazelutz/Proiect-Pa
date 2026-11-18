import 'package:flutter/material.dart';
import '../../theme/faculty_theme.dart';

class MainNavTemplate extends StatefulWidget {
  final List<Widget> pages;

  const MainNavTemplate({super.key, required this.pages});

  @override
  State<MainNavTemplate> createState() => _MainNavTemplateState();
}

class _MainNavTemplateState extends State<MainNavTemplate> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        indicatorColor: FacultyTheme.primaryNavy.withValues(alpha: 0.15),
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore, color: FacultyTheme.primaryNavy),
            label: 'Evenimente',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            selectedIcon: Icon(Icons.add_circle, color: FacultyTheme.primaryNavy),
            label: 'Organizează',
          ),
          NavigationDestination(
            icon: Icon(Icons.fact_check_outlined),
            selectedIcon: Icon(Icons.fact_check, color: FacultyTheme.primaryNavy),
            label: 'Prezență',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person, color: FacultyTheme.primaryNavy),
            label: 'Cont',
          ),
        ],
      ),
    );
  }
}