import 'package:flutter/material.dart';
import 'package:flutter_dogs/dog.dart';
import 'package:flutter_dogs/dog_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
