import 'package:flutter_riverpod/all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';


enum LockState { locking, locked, unlocking, unlocked }

@freezed
abstract class VehicleState with _$VehicleState{
  factory VehicleState({LockState lockState}) = _VehicleState;
}

final vehicleProvider = StateNotifierProvider((ref) => VehicleController());


class VehicleController extends StateNotifier<VehicleState> {
  VehicleController() : super(VehicleState(lockState: LockState.locked));

  void lock() {
    if (state.lockState != LockState.unlocked) {
      throw InvalidStateException('Vehicle not unlocked');
    }
    state.copyWith(lockState: LockState.locking);
    Future.delayed(Duration(seconds: 1)) // Do something async
        .then((value) => state = state.copyWith(lockState: LockState.locked));
  }

  void unlock() {
    if (state.lockState != LockState.locked) {
      throw InvalidStateException('Vehicle not unlocked');
    }
    state.copyWith(lockState: LockState.unlocking);
    Future.delayed(Duration(seconds: 1)) // Do something async
        .then((value) => state = state.copyWith(lockState: LockState.unlocked));
  }
}

class InvalidStateException implements Exception {
  String message;

  InvalidStateException(this.message);
}
