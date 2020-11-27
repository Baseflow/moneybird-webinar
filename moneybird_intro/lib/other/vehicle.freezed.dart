// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VehicleStateTearOff {
  const _$VehicleStateTearOff();

// ignore: unused_element
  _VehicleState call({LockState lockState}) {
    return _VehicleState(
      lockState: lockState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VehicleState = _$VehicleStateTearOff();

/// @nodoc
mixin _$VehicleState {
  LockState get lockState;

  $VehicleStateCopyWith<VehicleState> get copyWith;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res>;
  $Res call({LockState lockState});
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res> implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  final VehicleState _value;
  // ignore: unused_field
  final $Res Function(VehicleState) _then;

  @override
  $Res call({
    Object lockState = freezed,
  }) {
    return _then(_value.copyWith(
      lockState:
          lockState == freezed ? _value.lockState : lockState as LockState,
    ));
  }
}

/// @nodoc
abstract class _$VehicleStateCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$VehicleStateCopyWith(
          _VehicleState value, $Res Function(_VehicleState) then) =
      __$VehicleStateCopyWithImpl<$Res>;
  @override
  $Res call({LockState lockState});
}

/// @nodoc
class __$VehicleStateCopyWithImpl<$Res> extends _$VehicleStateCopyWithImpl<$Res>
    implements _$VehicleStateCopyWith<$Res> {
  __$VehicleStateCopyWithImpl(
      _VehicleState _value, $Res Function(_VehicleState) _then)
      : super(_value, (v) => _then(v as _VehicleState));

  @override
  _VehicleState get _value => super._value as _VehicleState;

  @override
  $Res call({
    Object lockState = freezed,
  }) {
    return _then(_VehicleState(
      lockState:
          lockState == freezed ? _value.lockState : lockState as LockState,
    ));
  }
}

/// @nodoc
class _$_VehicleState implements _VehicleState {
  _$_VehicleState({this.lockState});

  @override
  final LockState lockState;

  @override
  String toString() {
    return 'VehicleState(lockState: $lockState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleState &&
            (identical(other.lockState, lockState) ||
                const DeepCollectionEquality()
                    .equals(other.lockState, lockState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lockState);

  @override
  _$VehicleStateCopyWith<_VehicleState> get copyWith =>
      __$VehicleStateCopyWithImpl<_VehicleState>(this, _$identity);
}

abstract class _VehicleState implements VehicleState {
  factory _VehicleState({LockState lockState}) = _$_VehicleState;

  @override
  LockState get lockState;
  @override
  _$VehicleStateCopyWith<_VehicleState> get copyWith;
}
