import 'package:flutter_riverpod/all.dart';
import 'package:moneybird_intro/data/invoices.dart';
import 'package:flutter/material.dart';
import 'package:moneybird_intro/models/invoice.dart';

final filterWidgetKey = UniqueKey();

class InvoiceSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var filter = watch(invoiceFilter).state;

    return Container(
      width: double.infinity,
      child: PopupMenuButton(
        key: filterWidgetKey,
        initialValue: filter,
        onSelected: (value) => context.read(invoiceFilter).state = value,
        itemBuilder: (context) => InvoiceState.values.map((e) {
          return PopupMenuItem(
              key: ValueKey(e),
              child: InvoiceSelectorItem(option: e),
              value: e);
        }).toList(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: InvoiceSelectorItem(
            option: filter,
          ),
        ),
      ),
      color: Colors.white,
    );
  }
}


class InvoiceSelectorItem extends StatelessWidget {
  final InvoiceState option;
  const InvoiceSelectorItem({Key key, @required this.option}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var title = "";
    switch (option) {
      case InvoiceState.all:
        title = 'Alle facturen';
        break;
      case InvoiceState.concept:
        title = 'Concept facturen';
        break;
      case InvoiceState.open:
        title = 'Openstaande facturen';
        break;
      case InvoiceState.inPayment:
        title = 'In betaling zijnde facturen';
        break;
      case InvoiceState.paid:
        title = 'Betaalde facturen';
        break;
    }
    return Text(title);
  }
}
