import 'package:flutter/material.dart';
import 'package:flutter_dogs/home_page.dart';

void main() {
  runApp(const DogApp());
}

class DogApp extends StatelessWidget {
  const DogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData lightTheme = ThemeData(brightness: Brightness.light);

    final ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Gallery',
      theme: lightTheme.copyWith(
        colorScheme: lightTheme.colorScheme.copyWith(
          primary: Colors.lightGreen,
          secondary: Colors.black,
        ),
      ),
      darkTheme: darkTheme.copyWith(
        colorScheme: darkTheme.colorScheme.copyWith(
          primary: Colors.lightGreen,
          secondary: Colors.white,
        ),
      ),
      home: const HomePage(title: 'Dog Gallery'),
    );
  }
}
