// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

class BlueRectangularBox extends StatelessWidget {
  final String text1;
  final String text2;
  final String date;
  final String time;
  final String imagePath;

  const BlueRectangularBox({
    super.key,
    required this.text1,
    required this.text2,
    required this.date,
    required this.time,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Responding to pressed"),
        child: Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
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
                      text1,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      text2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/arrow.png',
                width: 24,
                height: 24,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
              thickness: 1,
              color: Color.fromARGB(103, 255, 255, 255)), // Divider
          const SizedBox(height: 20), // Space between divider and icons
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/calendar.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
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
