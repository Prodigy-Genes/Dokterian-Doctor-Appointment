import 'package:doctor_appointment/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dokterian());
}

class Dokterian extends StatelessWidget {
  const Dokterian({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(name: 'James')
      
    );
  }
}


