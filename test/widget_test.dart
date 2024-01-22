import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rappid_poc/UI/splashScreen/splashScreen.dart';
import 'package:rappid_poc/main.dart';

void main() {
  testWidgets('Main app screen is SplashScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the initial screen is SplashScreen.
    expect(find.byType(SplashScreen), findsOneWidget);
  });
}
