import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/contrlollers/converter_controller.dart';
import 'presentation/screens/myhome.dart';

void main() {
  // here we use injection to instantiate our controller
  //Get.put(ConverterController());
  // with the lazy put the instance is only created once its needed
  Get.lazyPut<ConverterController>(() => ConverterController());
  runApp(App());
}
