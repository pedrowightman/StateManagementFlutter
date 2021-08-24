import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc.dart';
import 'package:calculadorabinariodecimalbloc/presentation/widgets/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// BlocProvider provides access to the ConvertionBloc to all its children

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MisiónTIC 2022 Bloc',
      theme: ThemeData(
        primaryColor: Color(0xff4264b4),
        accentColor: Color(0xff1d2448),
      ),
      home: BlocProvider(
        create: (context) =>
            ConvertionBloc(), // constructor for the ConvertionBloc
        child: Scaffold(
          appBar: AppBar(
            title: Text('MisiónTIC 2022 - Flutter Bloc'),
          ),
          body: Center(
            child: Converter(),
          ),
        ),
      ),
    );
  }
}
