import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Find the screen height
    double screenHeight = MediaQuery.of(context).size.height;
    // Find the screen width
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
            height: screenHeight * .5,
            width: screenWidth,
            color: Colors.blueAccent,
            child: const Text('container 1'),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: 
              GestureDetector(
                onTap: () {
                  print('container 2');
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.greenAccent,
                  child: const Text('container 2'),
                ),
              ),
            ),

            Positioned(
              bottom: -20,
              left: 400/2 -50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
                child: const Text('container 2'),
              ),
            )

            
            
          ],),
      ),
    );
  }
}