import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:learning/pages/providers/service/riverpod_fetching_data_service.dart';
import 'package:learning/state_management/riverpod/counter_riverpod/counter_riverpod.dart';

class RiverpodCounterPage extends StatefulWidget {
  const RiverpodCounterPage({super.key});

  @override
  State<RiverpodCounterPage> createState() => _RiverpodCounterPageState();
}

class _RiverpodCounterPageState extends State<RiverpodCounterPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final proxy = ref.watch(dependentProvider);
        final value = ref.watch(myNotiferProvider);
        return Scaffold(
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    ref.read(myNotiferProvider.notifier).increment();
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    ref.read(myNotiferProvider.notifier).decrement();
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Center(
                child: Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Text(proxy),
            ],
          ),
        );
      },
    );
  }
}
