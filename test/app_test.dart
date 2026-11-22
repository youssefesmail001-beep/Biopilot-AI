import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:biopilot_ai/src/app/biopilot_app.dart';

void main() {
  testWidgets('Starter displays subjects and AI limitation', (tester) async {
    await tester.pumpWidget(const BioPilotApp());
    expect(find.text('BioPilot AI'), findsOneWidget);
    expect(find.text('Biochemistry'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.chat_outlined));
    await tester.pumpAndSettle();
    expect(find.text('On-device AI not installed'), findsOneWidget);
  });
}
