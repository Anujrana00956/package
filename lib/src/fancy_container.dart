import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class fancy_container extends StatefulWidget {
  const fancy_container({
    Key? key,
    this.height = 120.0,
    this.width,
    this.title,
    this.color1,
  }) : super(key: key);

  final double height;
  final double? width;
  final String? title;
  final Color? color1;
  @override
  State<fancy_container> createState() => _fancy_containerState();
}

class _fancy_containerState extends State<fancy_container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
