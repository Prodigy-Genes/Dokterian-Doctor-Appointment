// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CircularComponents extends StatelessWidget {
  const CircularComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => print("Responding to pressed"),
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(32, 158, 158, 158),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/covid19.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Covid 19',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 59, 59), fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () => print("Responding to pressed"),
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(32, 158, 158, 158),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/Doctor.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Doctor',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 59, 59), fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () => print("Responding to pressed"),
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(32, 158, 158, 158),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/medicine.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Medicine',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 59, 59), fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector (
          onTap: () => print("Responding to pressed"),
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(32, 158, 158, 158),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/hospital.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hospital',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 59, 59), fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }
}
