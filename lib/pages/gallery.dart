import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _HomeState();
}

class _HomeState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() => Navigator.popAndPushNamed(context, '/camera')),
              child: Text('Camera'),
            )
          ],
        ));
  }
}
