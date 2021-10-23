class Dog {
  String breedName;
  String imageUrl;
  String imageSource;
  String imageCopyright;
  String moreInfo; // From Wikipedia article
  String moreInfoUrl; // Wikipedia source
  List<RegistrationQuantity> registrationQuantities;

  Dog(this.breedName, this.imageUrl, this.imageSource, this.imageCopyright,
      this.moreInfo, this.moreInfoUrl, this.registrationQuantities);

  /*
    Registration quantities in 2020-2016 in Finland
    Source in Finnish: https://jalostus.kennelliitto.fi/frmRekisteroinnit.aspx
    The same in English: https://jalostus.kennelliitto.fi/frmRekisteroinnit.aspx?Lang=en&R=
  */
  static List<Dog> finnishBreeds = [
    Dog(
      'Finnish Lapphund',
      'assets/finnish_lapphund.jpg',
      'https://commons.wikimedia.org/wiki/File:Suomenlapinkoira.jpg',
      'Matti-92, public domain',
      'The Finnish Lapphund (or Finnish Lapponian Dog) is a hardy, easy going, medium-size breed of Spitz type. Traditionally it has been used for herding reindeer. Although it is one of the most popular dog breeds in its native country, Finland, it is not very numerous outside of the Nordic countries.',
      'https://en.wikipedia.org/wiki/Finnish_Lapphund',
      [
        RegistrationQuantity(
          2020,
          1358,
        ),
        RegistrationQuantity(
          2019,
          1224,
        ),
        RegistrationQuantity(
          2018,
          1464,
        ),
        RegistrationQuantity(
          2017,
          1181,
        ),
        RegistrationQuantity(
          2016,
          1281,
        ),
      ],
    ),
    Dog(
      'Lapponian Herder',
      'assets/lapponian_herder.jpg',
      'https://commons.wikimedia.org/wiki/File:Lapskvallhund.jpg',
      'Patrik Fors (Berzerk), CC BY-SA 3.0',
      'The Lapponian Herder (Lapinporokoira or Lapp Reindeer Dog or Lapsk Vallhund) is a breed of dog from Finland, one of three Lapphund breeds developed from a type of dog used by the Sami people for herding and guarding their reindeer.',
      'https://en.wikipedia.org/wiki/Lapponian_Herder',
      [
        RegistrationQuantity(
          2020,
          365,
        ),
        RegistrationQuantity(
          2019,
          278,
        ),
        RegistrationQuantity(
          2018,
          337,
        ),
        RegistrationQuantity(
          2017,
          341,
        ),
        RegistrationQuantity(
          2016,
          233,
        ),
      ],
    ),
    Dog(
      'Finnish Spitz',
      'assets/finnish_spitz.jpg',
      'https://commons.wikimedia.org/wiki/File:Finnish_Spitz_600.jpg',
      'sannse, CC BY-SA 3.0',
      'The Finnish Spitz (Finnish: suomenpystykorva) is a breed of dog originating in Finland. The breed was originally trained to hunt all types of game from squirrels and other rodents to bears. It is a "bark pointer", indicating the position of game by barking, and drawing the game animal\'s attention to itself, allowing an easier approach for the hunter. Its original game hunting purpose was to point to game that fled into trees, such as grouse, and capercaillies, but it also serves well for hunting elk. Some individuals have even been known to go after a bear. In its native country, the breed is still mostly used as a hunting dog. The breed is friendly and in general loves children, so it is suitable for domestic life. The Finnish Spitz has been the national dog of Finland since 1979.',
      'https://en.wikipedia.org/wiki/Finnish_Spitz',
      [
        RegistrationQuantity(
          2020,
          691,
        ),
        RegistrationQuantity(
          2019,
          660,
        ),
        RegistrationQuantity(
          2018,
          612,
        ),
        RegistrationQuantity(
          2017,
          588,
        ),
        RegistrationQuantity(
          2016,
          737,
        ),
      ],
    ),
    Dog(
      'Finnish Hound',
      'assets/finnish_hound.jpg',
      'https://commons.wikimedia.org/wiki/File:Finnish_Hound.jpg',
      'EtäKärppä, CC BY-SA 3.0',
      'The Finnish Hound (suomenajokoira, Finnish Bracke) is a breed of dog originally bred for hunting hare and fox.',
      'https://en.wikipedia.org/wiki/Finnish_Hound',
      [
        RegistrationQuantity(
          2020,
          1096,
        ),
        RegistrationQuantity(
          2019,
          1046,
        ),
        RegistrationQuantity(
          2018,
          1151,
        ),
        RegistrationQuantity(
          2017,
          1364,
        ),
        RegistrationQuantity(
          2016,
          1584,
        ),
      ],
    ),
    Dog(
      'Karelian Bear Dog',
      'assets/karelian_bear_dog.JPG',
      'https://commons.wikimedia.org/wiki/File:Karelski_pies_na_nied%C5%BAwiedzie_sylwetka.JPG',
      'Fraczek.marcin, CC BY-SA 4.0',
      'The Karelian Bear Dog (Karjalankarhukoira) is a Finnish breed of dog. In its home country, it is regarded as a national treasure. Karelian Bear Dogs will hunt a variety of animals. Its quick reflexes and fearless nature have made it very popular for hunting large game including small black bears, moose, and wild boar. It was the breed\'s ability to hunt bears that earned the breed its name. The Karelian Bear Dog is among the top 10 most common dog breeds in Finland.',
      'https://en.wikipedia.org/wiki/Karelian_Bear_Dog',
      [
        RegistrationQuantity(
          2020,
          701,
        ),
        RegistrationQuantity(
          2019,
          758,
        ),
        RegistrationQuantity(
          2018,
          900,
        ),
        RegistrationQuantity(
          2017,
          693,
        ),
        RegistrationQuantity(
          2016,
          760,
        ),
      ],
    ),
  ];
}

class RegistrationQuantity {
  int year;
  int quantity;

  RegistrationQuantity(this.year, this.quantity);
}
