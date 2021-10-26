import 'package:flutter/material.dart';
import 'package:flutter_dogs/dog.dart';
import 'package:flutter_dogs/dog_card.dart';

class CurrentDogPage extends StatelessWidget {
  const CurrentDogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DogCard(Dog.finnishBreeds[0]),
    );
  }
}
