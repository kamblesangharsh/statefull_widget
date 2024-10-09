import "package:flutter/material.dart";
void main() {
  runApp(const ContainercolorApp());
}

class ContainercolorApp extends StatefulWidget {
  const ContainercolorApp({super.key});
  @override
  State<ContainercolorApp> createState() => _ContainercolorAppState();
}

class _ContainercolorAppState extends State<ContainercolorApp> {
  bool colorchange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container color change",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("container color chnage"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: (colorchange) ? Colors.amber : Colors.blue,
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
