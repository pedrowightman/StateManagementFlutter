import 'package:demo_app/presentation/screens/converter.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MisiónTIC 2022',
      theme: ThemeData(
        primaryColor: Color(0xff4264b4),
        accentColor: Color(0xff1d2448),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MisiónTIC 2022 - Móvil - GetX'),
        ),
        body: Center(
          child: Converter(),
        ),
      ),
    );
  }
}
