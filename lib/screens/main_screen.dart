import 'package:app_mycap/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MyCap',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF511220),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 220.0,
                  color: const Color(0xFF511220),
                  alignment: const FractionalOffset(0.5, 0.8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFCB1C43),
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        "Mobilizing the Participant Voice",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 2.0,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          profileNav(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(12.0),
                          height: 82.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1727349711179-58532cfa62f6'),
                                ),
                              ),
                              const Text(
                                "Primary Profile",
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog(context);
        },
        backgroundColor: const Color(0xFF120D48),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

Future openDialog(context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Create Profile",
          style: TextStyle(fontSize: 18.0),
        ),
        content: const TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Enter Profile Name',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Create'),
          ),
        ],
      ),
    );

void profileNav(context) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
