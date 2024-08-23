import 'package:flutter/material.dart';
import 'package:learning/design_patterns/factory_method/factory_main.dart';
import 'package:learning/model/model.dart';

class HttpFetching extends StatelessWidget {
  final List<dynamic> user;
  const HttpFetching({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: user.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    User curr = user[index];
                    return Column(
                      children: [
                        ListTile(
                          tileColor:
                              curr.gender == 'male' ? Colors.blue : Colors.pink,
                          leading: Image.network(curr.picture!.large ?? ''),
                          title: Text(
                            "Name : ${curr.name!.first} ${curr.name!.last}",
                            style: TextStyle(
                              color: curr.gender == 'male'
                                  ? Colors.white
                                  : Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            "Gender : ${curr.gender}",
                            style: TextStyle(
                              color: curr.gender == 'male'
                                  ? Colors.white
                                  : Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
                const FactoryMain(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
