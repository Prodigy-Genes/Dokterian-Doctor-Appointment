// ignore_for_file: camel_case_types, avoid_print

import 'package:flutter/material.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Responding to pressed"),
        child: Container(
      width: 500,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(32, 158, 158, 158)),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/search.png',
            width: 28,
            height: 28,
            color: const Color.fromARGB(255, 59, 59, 59),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Search doctor or health issue',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 59, 59, 59),
              ))
        ],
      ),
    ));
  }
}
