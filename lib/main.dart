import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),


));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WaveWatcher"),
        centerTitle: true,
        backgroundColor: Colors.cyan[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
            color: Colors.teal[100],

            child: const Center(
              child: Image(
                image: AssetImage('assets/ireland.png'),
                height: 250.0,
              ),
            ),
          ),
          SearchCol(),
        ],
      ),
    );
  }
}

//will have to be statefull in future
class SearchCol extends StatelessWidget {
  const SearchCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[400],
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => {
              print("Button 1 was pressed")
            },
            style: ButtonStyle(

            ),
            child: const Text(
              "Button 1",
            ),
          ),
          ElevatedButton(
            onPressed: () => {
              print("Button 2 was pressed")
            },
            child: const Text("Button 2"),
          ),
          ElevatedButton(
            onPressed: () => {
              print("Button 3 was pressed")
            },
            child: const Text("Button 3"),
          ),
          ElevatedButton(
            onPressed: () => {
              print("Button 4 was pressed")
            },
            child: const Text("Button 4"),
          ),
          ElevatedButton(
            onPressed: () => {
              print("Button 5 was pressed")
            },
            child: const Text("Button 5"),
          ),
          ElevatedButton(
            onPressed: () => {
              print("Button 5 was pressed")
            },
            child: const Text("Button 6"),
          ),
        ],
      ),
    );
  }
}
