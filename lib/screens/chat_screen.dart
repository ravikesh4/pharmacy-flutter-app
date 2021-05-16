import 'package:flutter/material.dart';

class CHatScreen extends StatefulWidget {
  const CHatScreen({Key key}) : super(key: key);

  @override
  _CHatScreenState createState() => _CHatScreenState();
}

class _CHatScreenState extends State<CHatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 40,
                itemBuilder: (context, index) {
                  return Text('Hello');
                },
              ),
            ),
          ),
          Container(
            color: blue,
            child: Text('Hello'),
          )
        ],
      ),
    );
  }
}
