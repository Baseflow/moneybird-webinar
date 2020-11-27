import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:moneybird_intro/components/invoice_selector.dart';
import 'package:moneybird_intro/collections/invoices_list.dart';
import 'package:riverpod/all.dart';

class InvoicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InvoiceSelector(),
          Expanded(child: InvoiceList()),
        ],
      ),
      color: Colors.grey,
    );
  }
}
