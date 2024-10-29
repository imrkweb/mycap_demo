import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amberAccent,
              radius: 100.0,
              child: Text('Profile Image'),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Profile Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Passcode',
                ),
              ),
            ),
            Container(
              height: 60.0,
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
