import 'package:demo_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'domain/provider/convertion_model.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ConvertionModel(),
        child: App(),
      ),
    );
