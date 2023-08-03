import 'dart:math';

import 'package:dotted_line_array/dotted_line_array.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: FakeBarcode(context),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}

class FakeBarcode extends CustomPainter {
  final BuildContext context;

  const FakeBarcode(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final size = MediaQuery.of(context).size;
    // random barcode-like pattern
    const lineDash = [20.0, 6.7, 3.0, 5.0, 10.0, 7.0, -1.0];
    final paint = Paint()
      ..strokeWidth = 30
      ..color = Colors.pinkAccent;

    setLineDash(canvas, Offset(0, size.height / 2), Offset(size.width, size.height /2 ),
       paint, lineDash);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
