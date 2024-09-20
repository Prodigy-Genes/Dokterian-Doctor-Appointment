import 'package:doctor_appointment/screens/route/bottom_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dokterian());
}

class Dokterian extends StatelessWidget {
  const Dokterian({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(), 
    );
  }
}
