import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({super.key});

  @override
  State<WrapScreen> createState() => _WrapScreen();
}

class _WrapScreen extends State<WrapScreen> {
  var color = 1;
  var number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wrap Screen"),
        backgroundColor: Color.fromARGB(255, 224, 206, 152),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        color = 1;
                      });
                    },
                    child: Text("Red")),
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      color = 2;
                    });
                  },
                  child: Text("green")),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      color = 3;
                    });
                  },
                  child: Text("blue")),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("data"),
                  hintText: "Enter the number of box:",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            OutlinedButton(onPressed: () {}, child: const Text("Apply"))
          ]),
          Wrap(direction: Axis.horizontal, children: getWrapWidget())
        ],
      ),
    );
  }

  List<Widget> getWrapWidget() {
    var list = <Widget>[];
    for (int i = 0; i < number; i++) {
      list.add(Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10),
        color: color == 1
            ? Colors.red
            : color == 2
                ? Colors.green
                : Colors.blue,
      ));
    }
    return list;
  }
}
