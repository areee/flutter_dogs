import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dog.dart';
import 'dog_detail.dart';

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
      home: const MyHomePage(title: 'Dog Gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Dog.finnishBreeds.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DogDetail(dog: Dog.finnishBreeds[index]);
                    },
                  ),
                );
              },
              child: buildDogCard(Dog.finnishBreeds[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildDogCard(Dog dog) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(dog.imageUrl)),
            const SizedBox(height: 21.0),
            Text(
              dog.breedName,
              style: GoogleFonts.andada(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
