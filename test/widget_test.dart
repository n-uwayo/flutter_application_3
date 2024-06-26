// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_test/flutter_test.dart';
// Ensure this path matches your project structure

void main() {
  testWidgets('Temperature Converter smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TemperatureConverterApp());

    // Verify that the initial state is empty.
    expect(find.text('Please enter a value'), findsNothing);
    expect(find.text('Invalid input'), findsNothing);

    // Enter a value and trigger a conversion.
    await tester.enterText(find.byType(TextField), '32');
    await tester.tap(find.text('CONVERT'));
    await tester.pump();

    // Verify that the conversion result is displayed.
    expect(find.text('0.0'), findsOneWidget);
  });
}
