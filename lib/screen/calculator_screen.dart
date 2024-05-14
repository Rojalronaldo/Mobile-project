import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _numController = TextEditingController();
  int First = 0;
  int Second = 0;
  final List <String> lstOperatorNumber = [
     "C",
    "",
    "/",
    "<-",
    "7",
    "8",
    "9",
    "-",
    "4",
    "5",
    "6",
    "+",
    "1",
    "2",
    "3",
    "",
    "/",
    "0",
    ".",
    "=",
  ];

  
  final List<String> lstOperator = [
    "+",
    "-",
    "*",
    "/",
  ];
  String operator = "";
  int noOfButtons = 4;
  
  @override
  Widget build(BuildContext context) {
    // Check for the Qrientation of a phone
    if (MediaQuery.of(context).orientation ==
    Orientation.landscape){
      setState(() {
        noOfButtons = 6;
      });
    } else {
      setState(() {
        noOfButtons = 4;
      });
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 180, 208), 
      appBar: AppBar(
        title: const Text("Calculator app"),
        backgroundColor: const Color.fromARGB(255, 48, 115, 203),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.end,
              controller: _numController,
               // limit the character to 10 digit
              maxLength: 10,
              // show the num keyboard
              keyboardType: TextInputType.number,
              // do not allow charater typing
              inputFormatters: [
                 FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '0',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: noOfButtons,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: lstOperatorNumber.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      if (lstOperatorNumber[index] == "C") {
                        _numController.text = "";
                      } else if (lstOperatorNumber[index] == "<-") {
                        _numController.text = _numController.text
                            .substring(0, _numController.text.length - 1);
                      } else if (lstOperator
                          .contains(lstOperatorNumber[index])) {
                        if (lstOperatorNumber[index] == "+" ||
                            lstOperatorNumber[index] == "-" ||
                            lstOperatorNumber[index] == "*" ||
                            lstOperatorNumber[index] == "/") {
                          // Set the operator
                          operator = lstOperatorNumber[index];
                          // set the first value to first variable
                          First = int.parse(_numController.text);
                          _numController.text = "";
                        }
                      } else if (lstOperatorNumber[index] == "=") {
                           Second = int.parse(_numController.text);

                        // check for the operator and do the calculation
                        if (operator == "+") {
                          _numController.text = (First + Second).toString();
                        } else if (operator == "-") {
                          _numController.text = (First - Second).toString();
                        } else if (operator == "*") {
                          _numController.text = (First * Second).toString();
                        } else if (operator == "/") {
                          _numController.text = (First / Second).toString();
                        }
                      } else {
                        _numController.text += lstOperatorNumber[index];
                      }
                    },
                    child: Text(
                      lstOperatorNumber[index],
                      style: const TextStyle(fontSize: 30),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}