import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning/chopper_api/service.dart';
import 'package:learning/model/model.dart';
import 'package:learning/pages/http_fetching.dart';
import 'package:learning/pages/riverpod_counter_page.dart';
import 'package:learning/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    return ProviderScope(
      child: MaterialApp(
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
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const RiverpodCounterPage(),
            // HttpFetching(
            //     user: user,
            //   ),
          ),
        ),
      ),
    );
  }

  Future<void> fetchUsingChopper() async {
    await Service.create().getPostById(3).then((vlue) {});
  }

  Future<void> fetchData() async {
    setState(() {
      loading = true;
    });
    final response = await Services.fetchUsers();
    setState(() {
      user = response;
    });
    setState(() {
      loading = false;
    });
  }
}
