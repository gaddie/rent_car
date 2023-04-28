import 'package:flutter/material.dart';

DateTime now = DateTime.now();
var year = now.year;
var day = now.day;

class HiringPage extends StatefulWidget {
  @override
  State<HiringPage> createState() => _HiringPageState();
}

class _HiringPageState extends State<HiringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.teal,
          child: ListView(children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Icon(
                        Icons.remove,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('$day'),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
