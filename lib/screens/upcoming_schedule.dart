// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  final String text1;
  final String text2;
  final String date;
  final String time;
  final String imagePath;
  const UpcomingSchedule(
      {super.key,
      required this.text1,
      required this.text2,
      required this.date,
      required this.time,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => print("Responding to pressed"),
        child: Container(
          height: 225,
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
                      color: Colors.white,
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
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          text2,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                  thickness: 1, color: Color.fromARGB(30, 0, 0, 0)), // Divider
              const SizedBox(height: 20), // Space between divider and icons
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/calendar.png',
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        date,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/clock.png',
                        width: 24,
                        height: 24,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              //Detail
              const SizedBox(height: 15,),
              GestureDetector(
                onTap: () => print('Responded...'),
                child: Container(
                  width: 340,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.blueAccent.withOpacity(0.1)),
                  child: const Center(
                    child: Text(
                      'Detail',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
