import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iamin/home/home_page.dart';
import 'package:iamin/main.dart';

void main() {
  testWidgets('Renders HomePage', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.runAsync(() async {
      await tester.pumpWidget(const MyApp());

      await Future.delayed(const Duration(seconds: 5), () {});

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });

    var textButton = find.byKey(const Key('seeAllTransactions'));
    var elevatedButton = find.byKey(const Key('elevatedButton'));

    await tester.tap(textButton);
    await tester.tap(elevatedButton);

    // Check if the generated data is properly displayed

    var categoryName = find.text('Mobile Home Dealers');
    var transactionName = find.text('WWWOLACABSCOM');

    expect(categoryName, findsOneWidget);
    expect(transactionName, findsOneWidget);
  });

  // Check if the generated data is properly displayed
  testWidgets('Integration test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.runAsync(() async {
      await tester.pumpWidget(const MyApp());

      await Future.delayed(const Duration(seconds: 5), () {});

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });

    var categoryName = find.text('Mobile Home Dealers');
    var transactionName = find.text('WWWOLACABSCOM');

    expect(categoryName, findsOneWidget);
    expect(transactionName, findsOneWidget);
  });
}
