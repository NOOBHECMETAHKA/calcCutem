import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:calculator/colors.dart';

class ProgrammCalculatorLayout extends StatelessWidget {
  var textController = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: darkGray,
        body: Column(
          children: [
            HeaderLayout(textController: textController),
            Expanded(
                flex: 4,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    CalulatorButton(
                      onPressedFunction: null,
                      textButton: 'HEX',
                    ),
                    CalulatorButton(onPressedFunction: null, textButton: 'DEC'),
                    CalulatorButton(onPressedFunction: null, textButton: 'OCT'),
                    CalulatorButton(onPressedFunction: null, textButton: 'BIN'),
                    CalulatorButton(onPressedFunction: null, textButton: '9'),
                    CalulatorButton(onPressedFunction: null, textButton: '8'),
                    CalulatorButton(onPressedFunction: null, textButton: '7'),
                    CalulatorButton(onPressedFunction: null, textButton: 'CE'),
                    CalulatorButton(onPressedFunction: null, textButton: '6'),
                    CalulatorButton(onPressedFunction: null, textButton: '5'),
                    CalulatorButton(onPressedFunction: null, textButton: '4'),
                    CalulatorButton(onPressedFunction: null, textButton: '3'),
                    CalulatorButton(onPressedFunction: null, textButton: '2'),
                    CalulatorButton(onPressedFunction: null, textButton: '1'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CalulatorButton extends StatelessWidget {
  String textButton;
  Color? foregroundColorButton;
  Color? backgroundColorButton;
  Function? onPressedFunction;

  CalulatorButton({
    this.foregroundColorButton,
    this.backgroundColorButton,
    required this.textButton,
    required this.onPressedFunction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onPressed: () => this.onPressedFunction,
        child: Text(
          this.textButton,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
            foregroundColor: foregroundColorButton ?? Colors.white,
            backgroundColor: backgroundColorButton ?? simpleGray),
      ),
    );
  }
}
