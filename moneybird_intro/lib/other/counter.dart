import 'package:flutter_riverpod/all.dart';

final counterProvider = StateNotifierProvider((ref) => Counter());

class Counter extends StateNotifier<int>{
  Counter(): super(0);
  void increment() => state++;
}