import 'package:doctor_appointment/screens/home.dart';
import 'package:doctor_appointment/screens/message.dart';
import 'package:doctor_appointment/screens/profile.dart';
import 'package:doctor_appointment/screens/schedule.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _activeIndex = 0; // To track which tab is active

  // List of icons and labels
  final List<Map<String, dynamic>> _navItems = [
    {'icon': 'assets/icons/home.png', 'label': 'Home'},
    {'icon': 'assets/icons/schedule.png', 'label': 'Schedule'},
    {'icon': 'assets/icons/message.png', 'label': 'Messages'},
    {'icon': 'assets/icons/profile.png', 'label': 'Profile'},
  ];

  // List of screens
  final List<Widget> _screens = const [
    Home(name: 'James'), // Home screen
    Schedule(), // Schedule screen (to be created)
    Message(), // Messages screen
    Profile(), // Profile screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack keeps the state of each screen while allowing switching
      body: IndexedStack(
        index: _activeIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color.fromARGB(31, 208, 209, 210),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_navItems.length, (index) {
            final isActive = _activeIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _activeIndex = index; // Update the active tab index
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(
                    vertical: isActive ? 18 : 0, horizontal: isActive ? 16 : 0),
                decoration: BoxDecoration(
                  color: isActive
                      ? Colors.blue.withOpacity(0.1)
                      : Colors
                          .transparent, // Transparent blue overlay when active
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Icon
                    Image.asset(
                      _navItems[index]['icon']!,
                      width: 30,
                      height: 30,
                      color: isActive
                          ? Colors.blue
                          : Colors.grey, // Change icon color when active
                    ),
                    const SizedBox(width: 8),
                    // Show text when active
                    if (isActive)
                      Text(
                        _navItems[index]['label']!,
                        style: const TextStyle(
                            color: Colors
                                .blue, // Change text color to blue when active
                            fontSize: 18),
                      ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
