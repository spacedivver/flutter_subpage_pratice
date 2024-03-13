import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubPage Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
 @override
  State<StatefulWidget> createState()=> _FirstPage();
}

class _FirstPage extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page Main'),
      ),
      body: Container(
        child: Center(
          child: Text('첫 번재 페이지'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context)=>SecondPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('돌아가기'),
          ),
        ),
      ),
    );
  }
}