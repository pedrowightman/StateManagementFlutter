import 'package:demo_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'domain/use_case/convertion_state.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => Convertion.getModel(),
        child: App(),
      ),
    );
