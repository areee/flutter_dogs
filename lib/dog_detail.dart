import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dog.dart';
import 'package:intl/intl.dart';

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
  double _sliderScalar = 1.0;
  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dog.breedName!),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: InteractiveViewer(
                transformationController: _controller,
                child: Image(
                  image: AssetImage(widget.dog.imageUrl!),
                  /* Currently fitHeight is better, 
                  otherwise fitWidth may be better */
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              height: MediaQuery.of(context).size.height * 0.6 - 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Slider(
                    min: 1.0,
                    max: 4.0,
                    divisions: 20,
                    label: _sliderScalar.toStringAsPrecision(2),
                    value: _sliderScalar.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderScalar = newValue;
                        _controller.value =
                            Matrix4.identity().scaled(_sliderScalar);
                      });
                    },
                    activeColor: Colors.lightGreen,
                    inactiveColor: Colors.black,
                  ),
                  _DogBody(widget.dog, scalar: _sliderScalar),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DogBody extends StatelessWidget {
  const _DogBody(this.dog, {required this.scalar});
  final Dog dog;
  final double scalar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                DateFormat('dd.MM.yyyy').format(dog.date!),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Chip(
                backgroundColor: Colors.lightGreen,
                label: Text(
                  'Zoom: ${scalar.toStringAsPrecision(2)}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            dog.breedName!,
            style: GoogleFonts.montserrat(fontSize: 18),
          ),
          const SizedBox(height: 4),
          Text(
            'Copyright: ${dog.imageCopyright!}',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            dog.moreInfo!,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Text source: ${dog.moreInfoUrl!}'
            '\n Image source: ${dog.imageSource!}',
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
