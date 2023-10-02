import 'package:flutter/material.dart';
import 'package:calculator/layouts/simple.dart';
import 'package:calculator/layouts/programm.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      '/': (context) => SimpleCalculatorLayout(),
      '/programmer': (context) => ProgrammCalculatorLayout(),
    },
  ));
}

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Row(
                    children: [Icon(Icons.calculate_rounded), Text(' Обычный')],
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/programmer');
                  },
                  child: Row(
                    children: [Icon(Icons.code), Text(' Программист')],
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              child: TextField(
                controller: textController,
                readOnly: true,
                textAlign: TextAlign.end,
                decoration: InputDecoration(border: InputBorder.none),
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ));
  }
}
