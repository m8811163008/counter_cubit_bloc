import 'package:flutter/material.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterApp', () {
    testWidgets('is a MaterialApp', (widgetTester) async {
      expect(CounterApp(), isA<MaterialApp>());
    });

    testWidgets('home is CounterPage', (widgetTester) async {
      expect(CounterApp().home, isA<CounterPage>());
    });

    testWidgets('renders CounterPage', (widgetTest) async {
      await widgetTest.pumpWidget(CounterApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
