import 'package:flutter_dogs/dog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dog_theme.dart';

@immutable
class DogCard extends StatelessWidget {
  const DogCard(
    this.dog, {
    Key? key,
  }) : super(key: key);

  final Dog dog;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(dog.imageUrl!),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              dog.breedName ?? '',
              style: DogTheme.lightTextTheme.headline2,
            ),
            dog.date != null
                ? Positioned(
                    top: 32,
                    child: Text(
                      DateFormat('dd.MM.yyyy').format(dog.date!),
                      style: DogTheme.lightTextTheme.bodyText1,
                    ),
                  )
                : Container(),
            Positioned(
              bottom: 12,
              right: 0,
              child: Text(
                dog.imageCopyright ?? '',
                style: DogTheme.lightTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
