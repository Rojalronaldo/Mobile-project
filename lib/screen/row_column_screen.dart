import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 75,
                  alignment: Alignment.center,
                  color: Colors.lightBlue,
                  child: const Text("Container 1"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 75,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: const Text("Container 2"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 75,
                  alignment: Alignment.center,
                  color: Colors.lightBlue,
                  child: const Text("Container 3"),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Text("Container 1"),
              color: Colors.blueAccent,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlue,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Container 1"),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Container 1"),
            ),
          )
        ],
      ),
    );
  }
}