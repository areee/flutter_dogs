import 'package:flutter_dogs/dog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dog_theme.dart';

const cardWidth = 350.0;
const cardHeight = 450.0;
const cardRadius = 10.0;
const cardPadding = 16.0;

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
      child: Stack(
        children: [
          _buildPicture(),
          _buildTopOverlay(),
          Positioned(
            bottom: 0,
            child: _buildBottomOverlay(),
          ),
        ],
      ),
    );
  }

  Widget _buildPicture() {
    return Container(
      constraints: const BoxConstraints.expand(
        width: cardWidth,
        height: cardHeight,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(dog.imageUrl!),
          // TODO: Use 'Boxfit.fitWidth' or get better pictures?
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(cardRadius),
        ),
      ),
    );
  }

  Widget _buildTopOverlay() {
    return Container(
      height: 60,
      constraints: const BoxConstraints.expand(width: cardWidth, height: 72),
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(cardRadius),
          topRight: Radius.circular(cardRadius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: cardPadding,
          top: cardPadding,
          right: cardPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dog.breedName ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: DogTheme.darkTextTheme.headline2,
            ),
            if (dog.date != null)
              Text(
                DateFormat('dd.MM.yyyy').format(dog.date!),
                style: DogTheme.darkTextTheme.bodyText1,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomOverlay() {
    return Container(
      height: 60,
      constraints: const BoxConstraints.expand(width: cardWidth, height: 44),
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(cardRadius),
          bottomRight: Radius.circular(cardRadius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: cardPadding,
          top: cardPadding,
          right: cardPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              dog.imageCopyright ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: DogTheme.darkTextTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
