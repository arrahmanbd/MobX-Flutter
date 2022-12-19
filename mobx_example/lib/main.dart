import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/counter.dart';
import 'package:mobx/mobx.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
 CounterStore _counter = CounterStore();
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (context){
                return Text(
                  '${_counter.counter}',
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
           _counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
