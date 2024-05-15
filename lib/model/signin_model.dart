import 'package:flutter/material.dart';
 
class SignInModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 
  void signIn(BuildContext context) {
    String email = emailController.text;
    String password = passwordController.text;
 
    // Perform validation or authentication logic here
    // For now, let's just print the email and password
    print('Email: $email');
    print('Password: $password');
 
    // After sign in, you might want to navigate to another page, show a dialog, etc.
    // For now, let's just show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Sign in successful!'),
      ),
    );
  }
}