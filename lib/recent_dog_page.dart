import 'package:flutter/material.dart';
import 'package:flutter_dogs/dog.dart';
import 'package:flutter_dogs/dog_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

@immutable
class RecentDogPage extends StatelessWidget {
  const RecentDogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
          child: _buildDogCard(Dog.finnishBreeds[index]),
        );
      },
    );
  }

  Widget _buildDogCard(Dog dog) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(dog.imageUrl!)),
            const SizedBox(height: 10.0),
            Text(
              DateFormat('dd.MM.yyyy').format(dog.date!),
              style: const TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              dog.breedName!,
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
