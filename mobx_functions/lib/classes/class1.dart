import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_functions/classes/class2.dart';
import 'package:mobx_functions/classes/logicpart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FunStore _fun = FunStore();
  /* String topic="Packages"; */
  // int _counter = 0;
  // void incrementCounter(text) {
  //   setState(() {
  //     _counter++;
  //     topic = text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Observer(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${_fun.topic}',
              ),
              Text(
                '${_fun.counter}',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          );
        }),
      ),
      floatingActionButton: ActionButton(
        callback: _fun.add,
        title: 'Fundamental Function Try',
      ),
    );
  }
}
