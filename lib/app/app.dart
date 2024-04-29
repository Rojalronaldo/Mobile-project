
import 'package:flutter/material.dart';
import 'package:mobile/screen/list_tile_screen.dart';
import 'package:mobile/screen/student_details_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDetailsScreen(),
    );
  }
}