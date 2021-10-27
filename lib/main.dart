import 'package:flutter/material.dart';
import 'package:flutter_dogs/home_page.dart';

import 'dog_theme.dart';

void main() {
  runApp(const DogApp());
}

class DogApp extends StatelessWidget {
  const DogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Gallery',
      theme: DogTheme.light(),
      darkTheme: DogTheme.dark(),
      home: const HomePage(title: 'Dog Gallery'),
    );
  }
}
