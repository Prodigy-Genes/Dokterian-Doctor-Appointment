import 'package:doctor_appointment/screens/upcoming_schedule.dart';
import 'package:flutter/material.dart';

class ScheduleRoute extends StatefulWidget {
  const ScheduleRoute({super.key});

  @override
  State<ScheduleRoute> createState() => _ScheduleRouteState();
}

class _ScheduleRouteState extends State<ScheduleRoute> {
  // Sample data for upcoming schedules
  final List<Map<String, String>> upcomingSchedules = [
    {
      'text1': 'Dr. Joseph Brostito',
      'text2': 'Dental Specialist',
      'date': 'Sunday, 12 June',
      'time': '11:00 - 12:00 am',
      'imagePath': 'assets/images/Dental_Specialist.png',
    },
    {
      'text1': 'Dr. Bessie Coleman',
      'text2': 'Dental Specialist',
      'date': 'Monday, 13 June',
      'time': '1:00 - 2:00 pm',
      'imagePath': 'assets/images/Cardiologist.png',
    },
    {
      'text1': 'Dr. Babe Didrikson',
      'text2': 'Dental Specialist',
      'date': 'Tuesday, 14 June',
      'time': '3:00 - 4:00 pm',
      'imagePath': 'assets/images/Dermatologist.png',
    },
    // Add more schedules as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Horizontal list of tabs
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildScheduleTab('Canceled Schedules', 0),
              const SizedBox(width: 16),
              _buildScheduleTab('Upcoming Schedule', 1),
              const SizedBox(width: 16),
              _buildScheduleTab('Completed Schedules', 2),
            ],
          ),
        ),
        // List of upcoming schedules
        Expanded(
          // Change this to Expanded
          child: ListView.builder(
            itemCount: upcomingSchedules.length,
            itemBuilder: (context, index) {
              final schedule = upcomingSchedules[index];
              return Column(
                children: [
                  UpcomingSchedule(
                    text1: schedule['text1']!,
                    text2: schedule['text2']!,
                    date: schedule['date']!,
                    time: schedule['time']!,
                    imagePath: schedule['imagePath']!,
                  ),
                  const SizedBox(height: 16), // Space between schedules
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  // Method to build a schedule tab
  Widget _buildScheduleTab(String title, int index) {
    // Check if this tab is active
    bool isActive = index == 1; // Default active tab is Upcoming Schedule

    return GestureDetector(
      onTap: () {
        setState(() {
          // Update active tab logic if necessary
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 216,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: isActive
              ? Colors.blueAccent.withOpacity(0.1) // Active tab
              : Colors.black.withOpacity(0.05), // Inactive tab
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.blue : Colors.grey,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
