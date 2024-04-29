
import 'package:flutter/material.dart';
import 'package:mobile/screen/arithmetic_screen.dart';
import 'package:mobile/screen/simple_intrest_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 173, 180, 208),
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: const Color.fromARGB(255, 48, 115, 203),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArithmeticScreen()),
                    );
                  },
                  child: const Text(
                    "Arithemetic Screen",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SimpleInterest()),
                    );
                  },
                  child: const Text(
                    "Simple Intrest",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
