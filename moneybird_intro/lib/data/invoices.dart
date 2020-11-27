import 'package:flutter_riverpod/all.dart';
import 'package:moneybird_intro/models/invoice.dart';

final List<Invoice> exampleInvoices = [
  Invoice(
      title: 'Concept #1',
      invoiceDate: DateTime(2020, 11, 26),
      price: 65.34,
      state: InvoiceState.concept),
  Invoice(
      title: 'Concept #2',
      invoiceDate: DateTime(2020, 11, 27),
      price: 600.98,
      state: InvoiceState.concept),
  Invoice(
      title: 'Betaalde factuur #1',
      invoiceDate: DateTime(2020, 11, 22),
      price: 600.98,
      state: InvoiceState.paid),
  Invoice(
      title: 'Onbetaalde factuur #1',
      invoiceDate: DateTime(2020, 11, 23),
      price: 600.98,
      state: InvoiceState.open),
];

final invoiceFilter = StateProvider((ref) => InvoiceState.all);

final allInvoices = FutureProvider<List<Invoice>>((ref) async {
  await Future.delayed(Duration(seconds: 5));
  return exampleInvoices;
});

final filteredInvoices = FutureProvider<List<Invoice>>((ref) async {
  var list = await ref.watch(allInvoices.future);
  var filter = ref.watch(invoiceFilter).state;
  if (filter == InvoiceState.all) return list;
  return list.where((element) => element.state == filter).toList();
});