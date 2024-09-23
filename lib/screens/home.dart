import 'package:doctor_appointment/components/circular_components.dart';
import 'package:doctor_appointment/components/near_doctor.dart';
import 'package:doctor_appointment/components/search_bar.dart';
import 'package:doctor_appointment/components/schedule.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String name;
  const Home({super.key, required this.name});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row for greeting and sticker
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hello,',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Hi ${widget.name}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/icons/sticker.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Space between greeting and box
                // Use the BlueRectangularBox component
                const BlueRectangularBox(
                  text1: 'Dr. Imran Syahir', // Replace with actual text
                  text2: 'General Doctor', // Replace with actual text
                  date: 'Sunday, 12 June', // Replace with actual date
                  time: '11:00 - 12:00 am', // Replace with actual time
                  imagePath:
                      'assets/images/General_Doctor.png', // Replace with your circular image path
                ),
                const SizedBox(
                  height: 40,
                ),
                const Search_Bar(),
                const SizedBox(
                  height: 40,
                ),
                const CircularComponents(),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Near Doctor',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                const NearDoctor(
                    name: 'Dr. Joseph Brostit0',
                    title: 'Dental Specialist',
                    ratings: '4.8 (120 reviews)',
                    openingTime: 'Open at 7:00',
                    imagePath: 'assets/images/Dental_Specialist.png')
              ],
            ),
          ),
        ));
  }
}
