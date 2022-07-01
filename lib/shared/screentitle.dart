import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrnTitle extends StatelessWidget {
  final String text;

  const ScrnTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 700),
      child: Text(
        '$text Hub',
        style: const TextStyle(
          fontFamily: 'Quicksand',
        ),
      ),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(opacity: val, child: child);
      },
    );
  }
}
