import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) => const ListView(children: [
    ListTile(title: Text('Build'), subtitle: Text('Phase 1 starter / 0.1.0')),
    ListTile(title: Text('AI engine'), subtitle: Text('Not installed')),
    ListTile(title: Text('Network'), subtitle: Text('No network calls implemented in this starter')),
  ]);
}
