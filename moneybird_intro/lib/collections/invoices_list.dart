import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:moneybird_intro/components/error_icon.dart';
import 'package:moneybird_intro/components/invoice_widget.dart';
import 'package:moneybird_intro/components/loading_indicator.dart';
import 'package:moneybird_intro/data/invoices.dart';

class InvoiceList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(filteredInvoices).when(
        data: (invoices) =>
            ListView(
              children: [
                for(var invoice in invoices) InvoiceWidget(invoice)
              ],
            ),
        loading: () => LoadingIndicator(),
        error: (_, __) => ErrorIcon());
  }
}
