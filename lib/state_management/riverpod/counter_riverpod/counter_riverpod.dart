import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

class MyNotifer extends Notifier<int> {
  @override
  int build() => 0;

  int increment() => state++;

  int decrement() => state--;
}

final myNotiferProvider = NotifierProvider<MyNotifer, int>(MyNotifer.new);

final dependentProvider = Provider<String>((ref) {
  MyNotifer mynotifer = ref.watch(myNotiferProvider.notifier);
  return "This is dependent provider which depends on ${mynotifer.build()}";
});
