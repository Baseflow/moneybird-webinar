// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moneybird_intro/components/invoice_selector.dart';
import 'package:moneybird_intro/data/invoices.dart';

import 'package:moneybird_intro/main.dart';
import 'package:moneybird_intro/models/invoice.dart';

const invoiceTitle = 'TestInvoice #1';
const titlePaidInvoices = 'Betaalde facturen';

final testInvoices = [
  Invoice(
      title: 'TestInvoice #1',
      invoiceDate: DateTime(2020, 11, 26),
      price: 65.34,
      state: InvoiceState.concept),
];

final testInvoicesProvider = FutureProvider<List<Invoice>>((ref) async {
  return testInvoices;
});

void main() {
  testWidgets('Test invoices', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ProviderScope(
      overrides: [allInvoices.overrideWithProvider(testInvoicesProvider)],
      child: MyApp(),
    ));

    await tester.pump();

    expect(find.text(invoiceTitle), findsOneWidget);
  });

  testWidgets('Test filter', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [allInvoices.overrideWithProvider(testInvoicesProvider)],
      child: MyApp(),
    ));

    await tester.pump();
    expect(find.text(invoiceTitle), findsOneWidget);
    expect(find.text(titlePaidInvoices), findsNothing);

    final filter = find.byKey(filterWidgetKey);

    await tester.tap(filter);
    await tester.pumpAndSettle();

    expect(find.text(titlePaidInvoices), findsOneWidget);

    await tester.tap(find.byKey(ValueKey(InvoiceState.paid)));
    await tester.pump();

    expect(find.text(invoiceTitle), findsNothing);
  });
}
