import 'package:flutter/material.dart';

import 'ecommerce.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Ecommerce()
      ),
      
    );
  }
}