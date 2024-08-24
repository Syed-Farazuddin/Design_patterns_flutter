import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning/model/model.dart';
import 'package:learning/pages/providers/service/riverpod_fetching_data_service.dart';

class RiverpodFetchingPage extends StatelessWidget {
  const RiverpodFetchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final fetchdata = ref.watch(getUsers);
        return fetchdata.when(
          data: (data) {
            debugPrint(data.toString());
            return Column(
              children: [
                const Text(
                  "Data Fetched Successfully",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      User curr = data[index];
                      return ListTile(
                        subtitle: Text(
                          "${curr.name!.title} ${curr.name!.first}",
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Image.network(
                          curr.picture!.large.toString(),
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          },
          error: (error, _) {
            return const Text("Error during fetching data ");
          },
          loading: () {
            return const CircularProgressIndicator();
          },
        );
      },
    );
  }
}
