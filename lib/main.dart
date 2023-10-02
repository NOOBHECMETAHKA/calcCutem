import 'package:flutter/material.dart';
import 'package:calculator/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var textController = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: darkGray,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset('assets/calc.png', width: 20),
                          ),
                          Text(
                            'Калькулятор',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.calculate_rounded),
                                Text(' Обычный')
                              ],
                            ),
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.code),
                                Text(' Программист')
                              ],
                            ),
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 3),
                        child: TextField(
                          controller: textController,
                          readOnly: true,
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(border: InputBorder.none),
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: [
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '7',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '8',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '9',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(onPressedFunction: null, textButton: 'x'),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '4',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '5',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '6',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(onPressedFunction: null, textButton: '-'),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '1',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '2',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '3',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(onPressedFunction: null, textButton: '+'),
                      CalulatorButton(onPressedFunction: null, textButton: '/'),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '0',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                          onPressedFunction: null, textButton: 'CE'),
                      CalulatorButton(
                        onPressedFunction: null,
                        textButton: '=',
                        backgroundColorButton: simpleBlue,
                      ),
                    ],
                  ))
            ],
          ),
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
