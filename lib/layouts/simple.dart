import 'package:flutter/material.dart';
import 'package:calculator/colors.dart';
import 'package:calculator/main.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalculatorLayout extends StatefulWidget {
  @override
  State<SimpleCalculatorLayout> createState() => _SimpleCalculatorLayoutState();
}

class _SimpleCalculatorLayoutState extends State<SimpleCalculatorLayout> {
  var textController = TextEditingController(text: '0');
  bool operationFunctin = false;
  int modeWork = 10;

  void mainFunction(String mathFunction) {
    switch (mathFunction) {
      case '+':
        if (operationFunctin) {
          textController.text += mathFunction;
        }
        operationFunctin = false;
        break;
      case '-':
        if (operationFunctin) {
          textController.text += mathFunction;
        }
        operationFunctin = false;
        break;
      case '*':
        if (operationFunctin) {
          textController.text += mathFunction;
        }
        operationFunctin = false;
        break;
      case '/':
        if (operationFunctin) {
          textController.text += mathFunction;
        }
        operationFunctin = false;
        break;
      case 'CE':
        operationFunctin = false;
        textController.clear();
        break;
      case '=':
        if (operationFunctin) {
          if (!textController.text[textController.text.length - 1]
                  .contains(r'\+|\-|\*|\/') &&
              !textController.text.contains(RegExp(r'[A-Z]'))) {
            String example = textController.text;

            Parser p = Parser();
            Expression exp = p.parse(example);
            ContextModel cm = ContextModel();
            double eval = exp.evaluate(EvaluationType.REAL, cm);

            textController.text = eval.toString();
          }
        }
        operationFunctin = false;
        break;
      case 'HEX':
        if (!textController.text.toString().contains(RegExp(r'\+|\-|\*|\/')) &&
            textController.text.isNotEmpty) {
          int finalValue =
              double.tryParse(textController.text)!.round().toInt();
          String result = finalValue.toRadixString(16);
          modeWork = 16;

          textController.text = result.toString();
        }

        break;
      case 'OCT':
        if (!textController.text.toString().contains(RegExp(r'\+|\-|\*|\/')) &&
            textController.text.isNotEmpty) {
          int finalValue =
              double.tryParse(textController.text)!.round().toInt();
          String result = finalValue.toRadixString(8);
          modeWork = 8;

          textController.text = result.toString();
        }

        break;
      case 'BIN':
        if (!textController.text.toString().contains(RegExp(r'\+|\-|\*|\/')) &&
            textController.text.isNotEmpty) {
          int finalValue =
              double.tryParse(textController.text)!.round().toInt();
          String result = finalValue.toRadixString(2);
          modeWork = 2;

          textController.text = result.toString();
        }

        break;
      case 'DEC':
        if (!textController.text.toString().contains(RegExp(r'\+|\-|\*|\/')) &&
            textController.text.isNotEmpty) {
          int finalValue =
              double.tryParse(textController.text)!.round().toInt();
          String result = finalValue.toRadixString(10);
          modeWork = 10;

          textController.text = result.toString();
        }

        break;
      default:
        operationFunctin = true;
        textController.text += mathFunction;
        if (mathFunction.contains(RegExp(r'[A-B]'))) {
          modeWork = 16;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: darkGray,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              //header
              HeaderLayout(textController: textController),
              //--header

              Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: [
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('7');
                          });
                        },
                        textButton: '7',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('8');
                          });
                        },
                        textButton: '8',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('9');
                          });
                        },
                        textButton: '9',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('*');
                            });
                          },
                          textButton: '*'),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('4');
                          });
                        },
                        textButton: '4',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('5');
                          });
                        },
                        textButton: '5',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('6');
                          });
                        },
                        textButton: '6',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('-');
                            });
                          },
                          textButton: '-'),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('1');
                          });
                        },
                        textButton: '1',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('2');
                          });
                        },
                        textButton: '2',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('3');
                          });
                        },
                        textButton: '3',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('+');
                            });
                          },
                          textButton: '+'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('/');
                            });
                          },
                          textButton: '/'),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('0');
                          });
                        },
                        textButton: '0',
                        backgroundColorButton: lightGray,
                      ),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('CE');
                            });
                          },
                          textButton: 'CE'),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('=');
                          });
                        },
                        textButton: '=',
                        backgroundColorButton: simpleBlue,
                      ),
                      CalulatorButton(
                        onPressedFunction: () {
                          setState(() {
                            mainFunction('HEX');
                          });
                        },
                        textButton: 'HEX',
                      ),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('DEC');
                            });
                          },
                          textButton: 'DEC'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('OCT');
                            });
                          },
                          textButton: 'OCT'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('BIN');
                            });
                          },
                          textButton: 'BIN'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('A');
                            });
                          },
                          textButton: 'A'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('B');
                            });
                          },
                          textButton: 'B'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('C');
                            });
                          },
                          textButton: 'C'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('D');
                            });
                          },
                          textButton: 'D'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('E');
                            });
                          },
                          textButton: 'E'),
                      CalulatorButton(
                          onPressedFunction: () {
                            setState(() {
                              mainFunction('F');
                            });
                          },
                          textButton: 'F'),
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
  Function()? onPressedFunction;

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
        onPressed: this.onPressedFunction,
        child: Text(
          this.textButton,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: foregroundColorButton ?? Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: backgroundColorButton ?? simpleGray),
      ),
    );
  }
}
