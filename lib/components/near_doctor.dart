// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class NearDoctor extends StatelessWidget {
  final String name;
  final String title;
  final String ratings;
  final String openingTime;
  final String imagePath;
  const NearDoctor(
      {super.key,
      required this.name,
      required this.title,
      required this.ratings,
      required this.openingTime,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Responding to pressed"),
        child: Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(20, 0, 0, 0),
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: Offset(3, 5))
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // White background
                ),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16), // Space between image and texts
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/location.png',
                    width: 24,
                    height: 24,
                  ),
                  const Text('1.2KM')
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
              thickness: 1,
              color: Color.fromARGB(61, 168, 168, 168)), // Divider
          const SizedBox(height: 20), // Space between divider and icons
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 20,
                    height: 20,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    ratings,
                    style: const TextStyle(color: Colors.orange, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    openingTime,
                    style: const TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
