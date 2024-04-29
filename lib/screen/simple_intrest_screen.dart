
import 'package:flutter/material.dart';
import 'package:mobile/model/simpleintrest_model.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterest> {
// Delcare variables
  double? principle;
  double? rate;
  double? time;
  double result = 0;
  final mykey = GlobalKey<FormState>();

  SimpleintrestModel? simpleintrestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // making form center
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Principle";
                  }
                  return null;
                },
                onChanged: (value) {
                  principle = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principle ',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Rate";
                  }
                  return null;
                },
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate ',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Time ";
                  }
                  return null;
                },
                onChanged: (value) {
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time ',
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
                    if (mykey.currentState!.validate()) {}
                    setState(() {
                      simpleintrestModel = SimpleintrestModel(
                          principle: principle, rate: rate, time: time);
                      result = simpleintrestModel!.calculate();
                    });
                  },
                  child: const Text(
                    'Calculate Simple Interest',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple Interest is : $result',
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
