import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice.freezed.dart';

enum InvoiceState { all, concept, open, inPayment, paid }

@freezed
abstract class Invoice with _$Invoice {
  factory Invoice({String title, DateTime invoiceDate, double price,
    InvoiceState state,}) = _Invoice;
}