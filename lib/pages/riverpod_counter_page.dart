import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning/state_management/riverpod/counter_riverpod/counter_riverpod.dart';

class RiverpodCounterPage extends StatelessWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final value = ref.watch(counterProvider);
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).state++;
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          body: Center(
            child: Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        );
      },
    );
  }
}
