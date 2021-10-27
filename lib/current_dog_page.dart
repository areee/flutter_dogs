import 'package:flutter/material.dart';
import 'package:flutter_dogs/dog.dart';
import 'package:flutter_dogs/dog_card.dart';
import 'package:flutter_dogs/dog_detail.dart';

class CurrentDogPage extends StatelessWidget {
  const CurrentDogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return (DogDetail(dog: Dog.finnishBreeds[0]));
        }));
      },
      child: Center(
        child: DogCard(Dog.finnishBreeds[0]),
      ),
    );
  }
}
