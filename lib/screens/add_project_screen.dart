import 'package:flutter/material.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Join Project'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(14.0),
              width: 120,
              height: 100,
              child: const Text(
                "Scan the QR Code you were given and my cap will load the appropriate project.",
                softWrap: true,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Scan QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}
