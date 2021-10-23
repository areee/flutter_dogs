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
  double _sliderVal = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dog.breedName!),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.dog.imageUrl!),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.dog.breedName!,
              style: GoogleFonts.montserrat(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.dog.registrationQuantities!.length,
                itemBuilder: (BuildContext context, int index) {
                  final registration =
                      widget.dog.registrationQuantities![index];
                  return Text(
                    'Year ${registration.year}: ${registration.quantity} dogs',
                    style: TextStyle(
                      fontSize: _sliderVal,
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 14.0,
              max: 24.0,
              divisions: 10,
              label: 'Font size $_sliderVal',
              value: _sliderVal,
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue;
                });
              },
              activeColor: Colors.lightGreen,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
