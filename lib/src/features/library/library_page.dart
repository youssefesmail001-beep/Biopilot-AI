import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});
  @override
  Widget build(BuildContext context) => const Center(
    child: Padding(padding: EdgeInsets.all(24), child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.folder_open_outlined, size: 60),
        SizedBox(height: 12),
        Text('Document library', style: TextStyle(fontSize: 22)),
        SizedBox(height: 8),
        Text('Document importing and persistent local storage are planned for Phase 3.', textAlign: TextAlign.center),
      ],
    )),
  );
}
