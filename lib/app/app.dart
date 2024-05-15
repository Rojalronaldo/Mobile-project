
import 'package:flutter/material.dart';

import 'package:mobile/screen/profile_screen.dart';
import 'package:mobile/screen/signup_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}