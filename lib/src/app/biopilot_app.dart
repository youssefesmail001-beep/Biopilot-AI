import 'package:flutter/material.dart';

import '../features/assistant/assistant_page.dart';
import '../features/exams/exams_page.dart';
import '../features/home/home_page.dart';
import '../features/library/library_page.dart';
import '../features/settings/settings_page.dart';

class BioPilotApp extends StatelessWidget {
  const BioPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF0B1426);
    const accent = Color(0xFF3B82F6);
    return MaterialApp(
      title: 'BioPilot AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: navy,
        colorScheme: ColorScheme.fromSeed(
          seedColor: accent,
          brightness: Brightness.dark,
          surface: const Color(0xFF15233C),
        ),
        appBarTheme: const AppBarTheme(backgroundColor: navy),
        cardTheme: CardThemeData(color: const Color(0xFF15233C)),
      ),
      home: const AppShell(),
    );
  }
}

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int current = 0;
  static const titles = ['Home', 'My Library', 'Ask AI', 'Exam Mode', 'Settings'];
  static const pages = [
    HomePage(), LibraryPage(), AssistantPage(), ExamsPage(), SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(current == 0 ? 'BioPilot AI' : titles[current])),
    body: SafeArea(child: pages[current]),
    bottomNavigationBar: NavigationBar(
      selectedIndex: current,
      onDestinationSelected: (value) => setState(() => current = value),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.folder_outlined), label: 'Library'),
        NavigationDestination(icon: Icon(Icons.chat_outlined), label: 'Ask AI'),
        NavigationDestination(icon: Icon(Icons.school_outlined), label: 'Exams'),
        NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings'),
      ],
    ),
  );
}
