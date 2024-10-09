import "package:flutter/material.dart";

void main() {
  runApp(const Appbarcolor());
}

class Appbarcolor extends StatefulWidget {
  const Appbarcolor({super.key});
  @override
  State<Appbarcolor> createState() => _AppbarcolorState();
}

class _AppbarcolorState extends State<Appbarcolor> {
  bool colorchange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppBar Color",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar color app"),
          centerTitle: true,
          backgroundColor: (colorchange) ? Colors.amber : Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("change appbar color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorchange) {
              colorchange = false;
            } else {
              colorchange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
