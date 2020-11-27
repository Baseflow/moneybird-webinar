// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InvoiceTearOff {
  const _$InvoiceTearOff();

// ignore: unused_element
  _Invoice call(
      {String title, DateTime invoiceDate, double price, InvoiceState state}) {
    return _Invoice(
      title: title,
      invoiceDate: invoiceDate,
      price: price,
      state: state,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Invoice = _$InvoiceTearOff();

/// @nodoc
mixin _$Invoice {
  String get title;
  DateTime get invoiceDate;
  double get price;
  InvoiceState get state;

  $InvoiceCopyWith<Invoice> get copyWith;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {String title, DateTime invoiceDate, double price, InvoiceState state});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object title = freezed,
    Object invoiceDate = freezed,
    Object price = freezed,
    Object state = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      invoiceDate:
          invoiceDate == freezed ? _value.invoiceDate : invoiceDate as DateTime,
      price: price == freezed ? _value.price : price as double,
      state: state == freezed ? _value.state : state as InvoiceState,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) then) =
      __$InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, DateTime invoiceDate, double price, InvoiceState state});
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(_Invoice _value, $Res Function(_Invoice) _then)
      : super(_value, (v) => _then(v as _Invoice));

  @override
  _Invoice get _value => super._value as _Invoice;

  @override
  $Res call({
    Object title = freezed,
    Object invoiceDate = freezed,
    Object price = freezed,
    Object state = freezed,
  }) {
    return _then(_Invoice(
      title: title == freezed ? _value.title : title as String,
      invoiceDate:
          invoiceDate == freezed ? _value.invoiceDate : invoiceDate as DateTime,
      price: price == freezed ? _value.price : price as double,
      state: state == freezed ? _value.state : state as InvoiceState,
    ));
  }
}

/// @nodoc
class _$_Invoice with DiagnosticableTreeMixin implements _Invoice {
  _$_Invoice({this.title, this.invoiceDate, this.price, this.state});

  @override
  final String title;
  @override
  final DateTime invoiceDate;
  @override
  final double price;
  @override
  final InvoiceState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Invoice(title: $title, invoiceDate: $invoiceDate, price: $price, state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Invoice'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('invoiceDate', invoiceDate))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Invoice &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.invoiceDate, invoiceDate) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceDate, invoiceDate)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(invoiceDate) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(state);

  @override
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);
}

abstract class _Invoice implements Invoice {
  factory _Invoice(
      {String title,
      DateTime invoiceDate,
      double price,
      InvoiceState state}) = _$_Invoice;

  @override
  String get title;
  @override
  DateTime get invoiceDate;
  @override
  double get price;
  @override
  InvoiceState get state;
  @override
  _$InvoiceCopyWith<_Invoice> get copyWith;
}
