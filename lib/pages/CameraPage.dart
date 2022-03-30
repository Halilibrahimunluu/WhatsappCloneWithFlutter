// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text(
          'Burası Kamera Bölümü',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
