// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Burası Durumlar Bölümü',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
