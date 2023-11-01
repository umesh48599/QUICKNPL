import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('calculator')),
      body: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$num', style: TextStyle(fontSize: 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('answer', style: TextStyle(fontSize: 25)),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            num = calculateScreeenNum(9);
                          });
                        },
                        child: const Text('9', style: TextStyle(fontSize: 25))),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            num = calculateScreeenNum(8);
                          });
                        },
                        child: const Text('8')),
                    ElevatedButton(onPressed: () {}, child: const Text('7')),
                    ElevatedButton(onPressed: () {}, child: const Text('*')),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  int calculateScreeenNum(int param) {
    return num * 10 + param;
  }
}
