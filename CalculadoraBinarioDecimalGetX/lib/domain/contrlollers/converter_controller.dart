import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  var decimal = "0".obs;
  var binary = "0".obs;

  void updateDecimal(int digit) {
    decimal.value = Converter.adjustValue(decimal.value, digit);
    binary.value = Converter.dec2bin(decimal.value);
  }

  void updateBinary(int digit) {
    binary.value = Converter.adjustValue(binary.value, digit);
    decimal.value = Converter.bin2dec(binary.value);
  }

  void reset() {
    binary.value = "0";
    decimal.value = "0";
  }
}
