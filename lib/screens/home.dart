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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 80, 0, 0), // Padding for the top space
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Aligns items to the start
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column containing the texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello,',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Text(
                  'Hi ${widget.name}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Wide gap between the text and image
            const SizedBox(width: 235), // Increased space between text and image
            // Image aligned to the right of the text column
             ClipOval(
              child: Image.asset(
                'assets/icons/sticker.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover, // Ensure the image covers the circle
              ),
            ),
          ],
        ),
      ),
    );
  }
}
