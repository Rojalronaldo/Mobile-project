import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:  Container(
          alignment: Alignment.centerRight,
          height: double.infinity,
          width: double.infinity,
          // decoration: BoxDecoration(
          //   color: Colors.black87,
          //   border: Border.all(color: Colors.redAccent,width: 4),
          //   shape: BoxShape.circle
          // ),
          child:  const Text("Hello right", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
        ),
      ),
    );
  }
}