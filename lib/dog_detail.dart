import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dog.dart';

class DogDetail extends StatefulWidget {
  final Dog dog;

  const DogDetail({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _DogDetailState createState() {
    return _DogDetailState();
  }
}

class _DogDetailState extends State<DogDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dog.breedName),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.dog.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.dog.breedName,
              style: GoogleFonts.montserrat(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
