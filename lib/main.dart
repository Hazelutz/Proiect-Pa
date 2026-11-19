import 'package:material_ui/material_ui.dart';
import 'theme/faculty_theme.dart';
import 'ui/pages/attendance_page.dart';
import 'ui/pages/create_event_page.dart';
import 'ui/pages/events_feed_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/profile_page.dart';
import 'ui/templates/main_nav_template.dart';

void main() {
  runApp(const FacultyEventsApp());
}

class FacultyEventsApp extends StatefulWidget {
  const FacultyEventsApp({super.key});

  @override
  State<FacultyEventsApp> createState() => _FacultyEventsAppState();
}

class _FacultyEventsAppState extends State<FacultyEventsApp> {
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evenimente Facultate',
      theme: FacultyTheme.lightTheme,
      home: _isLoggedIn
          ? MainNavTemplate(
              pages: [
                const EventsFeedPage(),
                const CreateEventPage(),
                const AttendancePage(),
                ProfilePage(
                  onLogout: () => setState(() => _isLoggedIn = false),
                ),
              ],
            )
          : LoginPage(
              onLoginSuccess: () => setState(() => _isLoggedIn = true),
            ),
    );
  }
}