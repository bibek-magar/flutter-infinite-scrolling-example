import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_app/firebase_service.dart';
import 'package:my_app/model/room.dart';
import 'package:my_app/states/data_list.provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Infinite scrolling'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  final ScrollController _listScrollController = ScrollController();

  @override
  void initState() {
    _listScrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    final listNotifier = ref.read(dataListProvider.notifier);

    final listState = ref.read(dataListProvider);

    if (listState.hasNext &&
        !listState.isFetchingNext &&
        _listScrollController.offset >=
            _listScrollController.position.maxScrollExtent &&
        !_listScrollController.position.outOfRange) {
      listNotifier.fetchMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final dataState = ref.watch(dataListProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Random random = Random();
          int randomNumber = random.nextInt(100);
          ref.read(firebaseService).addData(randomNumber.toString());
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: dataState.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              controller: _listScrollController,
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 100,
              ),
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                for (Room data in dataState.rooms)
                  Card(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(data.data),
                    ),
                    margin: const EdgeInsets.all(24),
                  ),
                if (dataState.isFetchingNext)
                  const Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
    );
  }
}
