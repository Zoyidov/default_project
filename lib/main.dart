import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/welcome/welcome_screen.dart';

void main(){
  runApp(const Burgers());
}

class Burgers extends StatelessWidget {
  const Burgers({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
