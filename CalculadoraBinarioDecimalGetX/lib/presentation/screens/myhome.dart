import 'package:calculadorabinariodecimalgetx/presentation/widgets/converter.dart';
import 'package:flutter/material.dart';

// BlocProvider provides access to the ConvertionBloc to all its children

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MisiónTIC 2022 GetX',
      theme: ThemeData(
        primaryColor: Color(0xff4264b4),
        accentColor: Color(0xff1d2448),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MisiónTIC 2022 - Flutter GetX'),
        ),
        body: Center(
          child: Converter(),
        ),
      ),
    );
  }
}
