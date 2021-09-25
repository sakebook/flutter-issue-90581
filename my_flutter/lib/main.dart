import 'package:flutter/material.dart';

const _HOST_CONFIGURATION = String.fromEnvironment("HOST_CONFIGURATION");
const _HOST_APP_NAME = String.fromEnvironment("HOST_APP_NAME");

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Show values from host app.',
            ),
            Text(
              "HOST_CONFIGURATION: $_HOST_CONFIGURATION",
            ),
            Text(
              "HOST_APP_NAME: $_HOST_APP_NAME",
            ),
          ],
        ),
      ),
    );
  }
}
