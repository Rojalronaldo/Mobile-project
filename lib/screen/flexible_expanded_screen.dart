import 'package:flutter/material.dart';
import 'package:mobile/common/my_snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: 400,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.blueAccent,
                child:  ElevatedButton(onPressed: (){
                  showMySnackBar(message: "Button 1 pressed", context: context);
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //       content: Text("Button 1 pressed"),
                  //       duration: Duration(seconds: 3),
                  //     backgroundColor: Colors.green,
                  //     behavior: SnackBarBehavior.floating,
                  //   )
                  // );
                }, child: const Text("One")),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.lime,
                child:  ElevatedButton(onPressed: (){
                  showMySnackBar(message: "Button 2 pressed", context: context, color: Colors.redAccent);
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Button 2 pressed"),
                  //       duration: Duration(seconds: 3),
                  //       backgroundColor: Colors.redAccent,
                  //       behavior: SnackBarBehavior.floating,
                  //     )
                  // );
                }, child: const Text("Two")),
              ),
            )
          ],
        ),
      ),
    );
  }
}