import 'package:flutter/material.dart';
import 'package:mobile/model/arithmetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Delcare variables
  int? first;
  int? second;
  int result = 0;
  final mykey = GlobalKey<FormState>();

  ArthemeticModel? arthemeticModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        // use form for using Form validator
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the first No";
                  }
                  return null;
                },
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Second No";
                  }
                  return null;
                },
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    // check for the validation
                    if (mykey.currentState!.validate()) {}
                    setState(() {
                      arthemeticModel =
                          ArthemeticModel(first: first!, second: second!);
                      result = arthemeticModel!.Add();
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Sum is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
