import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivedb/my_todo.dart';
import 'package:hivedb/todo.dart';

Box? box;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  box = await Hive.openBox<Todo>("todobox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo using Hive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTodoScreen(),
    );
  }
}
