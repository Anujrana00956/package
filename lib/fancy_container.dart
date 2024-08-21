library fancy_container;

import 'package:flutter/material.dart';

/// A Calculator.

class FancyContainer extends StatefulWidget {
  const FancyContainer({
    Key? key,
    this.height = 120.0,
    this.width,
    this.title,
    this.color1,
    this.color2,
    this.TextColor,
  }) : super(key: key);

  final double height;
  final double? width;
  final String? title;
  final Color? color1;
  final Color? color2;
  final Color? TextColor;

  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Package")),
      body: Center(
        child: Container(
          height: widget.height,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              widget.color1 ?? Colors.amber,
              widget.color2 ?? Colors.blue
            ]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                '${widget.title}',
                style: TextStyle(
                    color: widget.TextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
