import 'package:flutter/material.dart';
import '../../shared/subjects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      const Text('Your academic workspace', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      const Card(child: ListTile(
        leading: Icon(Icons.phone_android, color: Colors.lightBlueAccent),
        title: Text('Phase 1: App shell'),
        subtitle: Text('Offline AI inference and document storage are not installed yet.'),
      )),
      const SizedBox(height: 20),
      const Text('Subjects', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      const SizedBox(height: 8),
      ...defaultSubjects.map((s) => Card(child: ListTile(
        leading: const Icon(Icons.menu_book_outlined),
        title: Text(s),
        subtitle: const Text('No documents indexed'),
      ))),
    ],
  );
}
