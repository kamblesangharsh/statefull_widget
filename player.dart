import "package:flutter/material.dart";
void main() {
  runApp(const Picapp());
}
class Picapp extends StatefulWidget {
  const Picapp({super.key});
  @override
  State createState() => _PicappState();
}
class _PicappState extends State {
  List image = ["https://plus.unsplash.com/premium_photo-1675601485116-b083859583b2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z2FuZXNoYXxlbnwwfHwwfHx8MA%3D%3D"];
  int imageindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "GANPATI BAPPA MORYA 💕",
              style: TextStyle(fontWeight: FontWeight.w500),
              selectionColor: Colors.black,
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: Image.network("image[$imageindex]"),
                ),
                const SizedBox(
                  height: 20,
                  child: Text("BAPPA MORYA"),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (imageindex < image.length - 1) {
                imageindex++;
              } else {
                imageindex = 0;
              }
              setState(() {});
            },
            backgroundColor: Colors.purple,
            child: const Icon(Icons.forward),
          ),
        )
    ,
 );
  }
}