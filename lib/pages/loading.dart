import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            "Loading Page",
            style: TextStyle(
              fontSize: 48,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          icon: const Icon(Icons.home),
          label: const Text("Go to home"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, "/location");
          },
          icon: const Icon(Icons.local_activity),
          label: const Text("Go to location"),
        )
      ],
    ));
  }
}
