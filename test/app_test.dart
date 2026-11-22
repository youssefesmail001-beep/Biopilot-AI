
import 'package:flutter_test/flutter_test.dart';
import 'package:biopilot_ai/src/app/app.dart';

void main() {
  testWidgets('BioPilot AI launches successfully', (tester) async {
    await tester.pumpWidget(const BioPilotApp());

    expect(find.text('BioPilot AI'), findsWidgets);
  });
}
