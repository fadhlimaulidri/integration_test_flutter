import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_test_flutter/main.dart' as app;
import '../helper.dart';

void main() {
  group('App test', () {
    final binding = IntegrationTestWidgetsFlutterBinding();
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("failing test example", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.add));

      expect(find.text('4'), findsOneWidget);

      Future.delayed(Duration(seconds: 14));
      await takeScreenshot(tester, binding);
    });
  });
}
