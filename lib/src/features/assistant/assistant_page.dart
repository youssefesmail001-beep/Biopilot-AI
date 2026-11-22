import 'package:flutter/material.dart';

class AssistantPage extends StatelessWidget {
  const AssistantPage({super.key});
  @override
  Widget build(BuildContext context) => const Center(
    child: Padding(padding: EdgeInsets.all(24), child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.smart_toy_outlined, size: 60),
        SizedBox(height: 12),
        Text('On-device AI not installed', style: TextStyle(fontSize: 22)),
        SizedBox(height: 8),
        Text('The local model must be integrated and benchmarked before answering is enabled.', textAlign: TextAlign.center),
      ],
    )),
  );
}
