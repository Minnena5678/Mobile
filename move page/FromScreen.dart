import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  const FromScreen({super.key});

  @override
  State<FromScreen> createState() => _onscreenState();
}

class _onscreenState extends State<FromScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Input"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(label: Text("มีรายการ")),
            autofocus: true,
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text("จำนวนเงิน")),
            keyboardType: TextInputType.number,
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "เพิ่มข้อมูล",
                style: TextStyle(color: Color.fromARGB(255, 255, 1, 1)),
              ))
        ],
      ),
    );
  }
}
