import 'package:flutter/material.dart';
import 'widget.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 50, 82, 226),
          title: const Text('App settings'),
          leading:const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body:  const Body(),
      )
    )
  );
}


