import 'package:flutter/material.dart';
import 'package:learning/chopper_api/service.dart';
import 'package:learning/design_patterns/factory_method/factory_main.dart';
import 'package:learning/model/model.dart';
import 'package:learning/services/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loading = false;

  List<User> user = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    fetchUsingChopper();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Kachra"),
          elevation: 0,
          backgroundColor: Colors.grey[300],
        ),
        body: Container(
          // color: Colors.grey[200],
          padding: const EdgeInsets.all(15),
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : Column(
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
                                      tileColor: curr.gender == 'male'
                                          ? Colors.blue
                                          : Colors.pink,
                                      leading: Image.network(
                                          curr.picture!.large ?? ''),
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
                ),
        ),
      ),
    );
  }

  Future<void> fetchUsingChopper() async {
    await Service.create().getPostById(3).then((vlue) {
      print(vlue);
    });
  }

  Future<void> fetchData() async {
    setState(() {
      loading = true;
    });
    final response = await Services.fetchUsers();
    setState(() {
      user = response;
    });
    print(response.length);
    print(response[0].gender);
    setState(() {
      loading = false;
    });
  }
}
