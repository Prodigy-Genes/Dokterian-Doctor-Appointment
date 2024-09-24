import 'package:doctor_appointment/screens/route/schedule_route.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: 
            Padding(padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
            child: ScheduleRoute(),
            ),
            
            );
  }
}
