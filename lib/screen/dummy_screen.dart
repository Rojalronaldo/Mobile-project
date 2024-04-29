import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.call),
                SafeArea(child: Container(
                  child: Text("CALL"),
                ),)
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                SafeArea(child: Container(
                  child: Text("ROUTE"),
                ),)
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                SafeArea(child: Container(
                  child: Text("SHARE"),
                ),)
              ],
            )
          ],
        ),
      ),)
    );
  }
}