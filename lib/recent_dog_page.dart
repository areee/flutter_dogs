import 'package:flutter/material.dart';
import 'package:flutter_dogs/dog.dart';
import 'package:flutter_dogs/dog_card.dart';
import 'package:flutter_dogs/dog_detail.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: index == 0 ? 12 : 0, bottom: 12),
            child: DogCard(Dog.finnishBreeds[index]),
          ),
        );
      },
    );
  }
}
