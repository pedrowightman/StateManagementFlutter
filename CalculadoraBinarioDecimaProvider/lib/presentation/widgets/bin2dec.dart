import 'package:demo_app/domain/provider/convertion_model.dart';
import 'package:demo_app/domain/use_case/convertion_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bin2Dec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = Convertion(context);

    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.binary,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.decimal,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
            Expanded(
              flex: 4,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "1",
                            style: new TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => calculator.convertBinary(1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "0",
                            style: new TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => calculator.convertBinary(0),
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () => calculator.reset(),
                  child: Text(
                    "Reset",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
