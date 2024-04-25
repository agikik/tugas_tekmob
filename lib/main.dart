import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create
  )
){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample',
      home: CounterApp(),
    ); // MaterialApp
  }
}
class Counter with ChangeNotifier{
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}

class CounterApp extends StatefulWidget{
  @override
  _CounterState createState() => CounterState();


}

