/// Data model to hold information about the dog

class Dog {
  /// Breed name of the dog
  final String? breedName;

  /// Image url of the dog
  final String? imageUrl;

  /// Image source of the dog
  final String? imageSource;

  /// Image copyright of the dog
  final String? imageCopyright;

  /// More info about the dog (from Wikipedia article)
  final String? moreInfo;

  /// More info source (Wikipedia source url)
  final String? moreInfoUrl;

  /// Type of the dog
  /// Currently defaults to other because Finnish breeds are already added to the sample data
  final DogType dogType;

  /// Registration quantities of the dog breed
  final List<RegistrationQuantity>? registrationQuantities;

  const Dog({
    this.breedName,
    this.imageUrl,
    this.imageSource,
    this.imageCopyright,
    this.moreInfo,
    this.moreInfoUrl,
    this.dogType = DogType.other,
    this.registrationQuantities,
  });

  /*
    Registration quantities in 2020-2016 in Finland
    Source in Finnish: https://jalostus.kennelliitto.fi/frmRekisteroinnit.aspx
    The same in English: https://jalostus.kennelliitto.fi/frmRekisteroinnit.aspx?Lang=en&R=
  */
  static List<Dog> finnishBreeds = [
    Dog(
      breedName: 'Finnish Lapphund',
      imageUrl: 'assets/finnish_lapphund.jpg',
      imageSource:
          'https://commons.wikimedia.org/wiki/File:Suomenlapinkoira.jpg',
      imageCopyright: 'Matti-92, public domain',
      moreInfo:
          'The Finnish Lapphund (or Finnish Lapponian Dog) is a hardy, easy going, medium-size breed of Spitz type. Traditionally it has been used for herding reindeer. Although it is one of the most popular dog breeds in its native country, Finland, it is not very numerous outside of the Nordic countries.',
      moreInfoUrl: 'https://en.wikipedia.org/wiki/Finnish_Lapphund',
      dogType: DogType.finnishBreed,
      registrationQuantities: [
        RegistrationQuantity(
          year: 2020,
          quantity: 1358,
        ),
        RegistrationQuantity(
          year: 2019,
          quantity: 1224,
        ),
        RegistrationQuantity(
          year: 2018,
          quantity: 1464,
        ),
        RegistrationQuantity(
          year: 2017,
          quantity: 1181,
        ),
        RegistrationQuantity(
          year: 2016,
          quantity: 1281,
        ),
      ],
    ),
    Dog(
      breedName: 'Lapponian Herder',
      imageUrl: 'assets/lapponian_herder.jpg',
      imageSource: 'https://commons.wikimedia.org/wiki/File:Lapskvallhund.jpg',
      imageCopyright: 'Patrik Fors (Berzerk), CC BY-SA 3.0',
      moreInfo:
          'The Lapponian Herder (Lapinporokoira or Lapp Reindeer Dog or Lapsk Vallhund) is a breed of dog from Finland, one of three Lapphund breeds developed from a type of dog used by the Sami people for herding and guarding their reindeer.',
      moreInfoUrl: 'https://en.wikipedia.org/wiki/Lapponian_Herder',
      dogType: DogType.finnishBreed,
      registrationQuantities: [
        RegistrationQuantity(
          year: 2020,
          quantity: 365,
        ),
        RegistrationQuantity(
          year: 2019,
          quantity: 278,
        ),
        RegistrationQuantity(
          year: 2018,
          quantity: 337,
        ),
        RegistrationQuantity(
          year: 2017,
          quantity: 341,
        ),
        RegistrationQuantity(
          year: 2016,
          quantity: 233,
        ),
      ],
    ),
    Dog(
      breedName: 'Finnish Spitz',
      imageUrl: 'assets/finnish_spitz.jpg',
      imageSource:
          'https://commons.wikimedia.org/wiki/File:Finnish_Spitz_600.jpg',
      imageCopyright: 'sannse, CC BY-SA 3.0',
      moreInfo:
          'The Finnish Spitz (Finnish: suomenpystykorva) is a breed of dog originating in Finland. The breed was originally trained to hunt all types of game from squirrels and other rodents to bears. It is a "bark pointer", indicating the position of game by barking, and drawing the game animal\'s attention to itself, allowing an easier approach for the hunter. Its original game hunting purpose was to point to game that fled into trees, such as grouse, and capercaillies, but it also serves well for hunting elk. Some individuals have even been known to go after a bear. In its native country, the breed is still mostly used as a hunting dog. The breed is friendly and in general loves children, so it is suitable for domestic life. The Finnish Spitz has been the national dog of Finland since 1979.',
      moreInfoUrl: 'https://en.wikipedia.org/wiki/Finnish_Spitz',
      dogType: DogType.finnishBreed,
      registrationQuantities: [
        RegistrationQuantity(
          year: 2020,
          quantity: 691,
        ),
        RegistrationQuantity(
          year: 2019,
          quantity: 660,
        ),
        RegistrationQuantity(
          year: 2018,
          quantity: 612,
        ),
        RegistrationQuantity(
          year: 2017,
          quantity: 588,
        ),
        RegistrationQuantity(
          year: 2016,
          quantity: 737,
        ),
      ],
    ),
    Dog(
      breedName: 'Finnish Hound',
      imageUrl: 'assets/finnish_hound.jpg',
      imageSource: 'https://commons.wikimedia.org/wiki/File:Finnish_Hound.jpg',
      imageCopyright: 'EtäKärppä, CC BY-SA 3.0',
      moreInfo:
          'The Finnish Hound (suomenajokoira, Finnish Bracke) is a breed of dog originally bred for hunting hare and fox.',
      moreInfoUrl: 'https://en.wikipedia.org/wiki/Finnish_Hound',
      dogType: DogType.finnishBreed,
      registrationQuantities: [
        RegistrationQuantity(
          year: 2020,
          quantity: 1096,
        ),
        RegistrationQuantity(
          year: 2019,
          quantity: 1046,
        ),
        RegistrationQuantity(
          year: 2018,
          quantity: 1151,
        ),
        RegistrationQuantity(
          year: 2017,
          quantity: 1364,
        ),
        RegistrationQuantity(
          year: 2016,
          quantity: 1584,
        ),
      ],
    ),
    Dog(
      breedName: 'Karelian Bear Dog',
      imageUrl: 'assets/karelian_bear_dog.JPG',
      imageSource:
          'https://commons.wikimedia.org/wiki/File:Karelski_pies_na_nied%C5%BAwiedzie_sylwetka.JPG',
      imageCopyright: 'Fraczek.marcin, CC BY-SA 4.0',
      moreInfo:
          'The Karelian Bear Dog (Karjalankarhukoira) is a Finnish breed of dog. In its home country, it is regarded as a national treasure. Karelian Bear Dogs will hunt a variety of animals. Its quick reflexes and fearless nature have made it very popular for hunting large game including small black bears, moose, and wild boar. It was the breed\'s ability to hunt bears that earned the breed its name. The Karelian Bear Dog is among the top 10 most common dog breeds in Finland.',
      moreInfoUrl: 'https://en.wikipedia.org/wiki/Karelian_Bear_Dog',
      dogType: DogType.finnishBreed,
      registrationQuantities: [
        RegistrationQuantity(
          year: 2020,
          quantity: 701,
        ),
        RegistrationQuantity(
          year: 2019,
          quantity: 758,
        ),
        RegistrationQuantity(
          year: 2018,
          quantity: 900,
        ),
        RegistrationQuantity(
          year: 2017,
          quantity: 693,
        ),
        RegistrationQuantity(
          year: 2016,
          quantity: 760,
        ),
      ],
    ),
  ];
}

class RegistrationQuantity {
  /// Year of the registration
  final int? year;

  /// Quantity of the registration
  final int? quantity;

  RegistrationQuantity({this.year, this.quantity});
}

/// Used to specify whether the dog belongs to the Finnish breeds or other
enum DogType { finnishBreed, other }
