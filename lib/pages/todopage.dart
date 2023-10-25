import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key, required String title});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //text editing controller to access what the user typed

  TextEditingController myController = TextEditingController();

  void greetUser() {
    print(myController.text);

    setState(() {
      greetingMessage = "Hello, " + myController.text;
    });
  }

  String greetingMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name",
              ),
            ),

            //button
            ElevatedButton(
              onPressed: greetUser,
              child: const Text("Tap"),
            ),
          ]),
        ),
      ),
    );
  }
}
