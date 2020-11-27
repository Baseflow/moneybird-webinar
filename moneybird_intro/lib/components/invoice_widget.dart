import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moneybird_intro/models/invoice.dart';

class InvoiceWidget extends StatelessWidget {
  final Invoice invoice;

  InvoiceWidget(this.invoice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    invoice.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(DateFormat("dd-MM-yyyy").format(invoice.invoiceDate))
                ],
              ),
            ),
            Column(
              children: [
                Text("€${invoice.price}"),
                StatusWidget(invoice.state)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  final InvoiceState state;

  StatusWidget(this.state);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: new BorderRadius.all(
            const Radius.circular(4.0),
          )),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          state.toString(),
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
