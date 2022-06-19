import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/result_data.dart';

class CalculatorScreen extends StatefulWidget {
  static String id = "/CalculatorScreen";

  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 2.5)),
            padding: EdgeInsets.all(4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2.5)),
                  width: 292,
                  height: 75,
                  child: Text(
                    '${Provider.of<ResultData>(context).expression}',
                    style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CalculatorButton(symbol: 'CE'),
                    CalculatorButton(
                        symbol: 'C',
                        specialCallBack: () {
                          Provider.of<ResultData>(context, listen: false)
                              .clearExpression();
                        }),
                    CalculatorButton(symbol: '<'),
                    CalculatorButton(symbol: '='),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CalculatorButton(symbol: '7'),
                    CalculatorButton(symbol: '8'),
                    CalculatorButton(symbol: '9'),
                    CalculatorButton(symbol: '/'),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CalculatorButton(symbol: '4'),
                    CalculatorButton(symbol: '5'),
                    CalculatorButton(symbol: '6'),
                    CalculatorButton(symbol: 'x'),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CalculatorButton(symbol: '1'),
                    CalculatorButton(symbol: '2'),
                    CalculatorButton(symbol: '3'),
                    CalculatorButton(symbol: '+'),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CalculatorButton(symbol: '0'),
                    CalculatorButton(symbol: '.'),
                    CalculatorButton(symbol: 'PI'),
                    CalculatorButton(symbol: '-'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
