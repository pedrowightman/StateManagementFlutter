import 'package:calculadorabinariodecimalbloc/domain/use_case/converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_events.dart';
import 'bloc_state.dart';

// the ui sends events, the bloc responds with states
// https://bloclibrary.dev/#/architecture

class ConvertionBloc extends Bloc<ConvertionEvent, AbstractConverterState> {
  String _decimal = "0", _binary = "0";

  ConvertionBloc() : super(ConverterState("0", "0"));

  String get decimal => _decimal;
  String get binary => _binary;

  @override
  Stream<AbstractConverterState> mapEventToState(ConvertionEvent event) async* {
    if (event is UpdateDecimalEvent) {
      _decimal = Converter.adjustValue(_decimal, event.digit);
      _binary = Converter.dec2bin(_decimal);

      yield ConverterState(
        _decimal,
        _binary,
      );
    }

    if (event is UpdateBinaryEvent) {
      _binary = Converter.adjustValue(_binary, event.digit);
      _decimal = Converter.bin2dec(_binary);

      yield ConverterState(
        _decimal,
        _binary,
      );
    }

    if (event is ResetEvent) {
      _binary = "0";
      _decimal = "0";

      yield ConverterState(
        _decimal,
        _binary,
      );
    }
  }
}
