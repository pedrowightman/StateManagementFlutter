import 'package:demo_app/domain/provider/convertion_model.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Convertion {
  final ConvertionModel model;

  Convertion(BuildContext context)
      : this.model = Provider.of<ConvertionModel>(context, listen: false);

  void convertDecimal(int number) {
    this.model.updateDecimal(number);
  }

  void convertBinary(int number) {
    this.model.updateBinary(number);
  }

  void reset() {
    this.model.reset();
  }

  static ConvertionModel getModel() {
    return ConvertionModel();
  }
}
