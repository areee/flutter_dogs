class Dog {
  String breedName;
  String imageUrl;
  String moreInfo; // From Wikipedia article
  String moreInfoUrl; // Wikipedia source
  /*
    Registration amoounts 2020 vs. 2019 in Finland
    Source in English: https://www.kennelliitto.fi/en/dogs/registrations-finland-numbers
    More in Finnish: https://www.kennelliitto.fi/koirat/rotujen-rekisterointimaarat-suomessa
  */
  List<int> registrationAmounts;

  Dog(this.breedName, this.imageUrl, this.moreInfo, this.moreInfoUrl,
      this.registrationAmounts);

  static List<Dog> finnishBreeds = [
    Dog(
        'Finnish Lapphund',
        'assets/finnish_lapphund.jpg',
        'The Finnish Lapphund (or Finnish Lapponian Dog) is a hardy, easy going, medium-size breed of Spitz type. Traditionally it has been used for herding reindeer. Although it is one of the most popular dog breeds in its native country, Finland, it is not very numerous outside of the Nordic countries.',
        'https://en.wikipedia.org/wiki/Finnish_Lapphund',
        [1358, 1224]),
    Dog(
        'Lapponian Herder',
        'assets/lapponian_herder.jpg',
        'The Lapponian Herder (Lapinporokoira or Lapp Reindeer Dog or Lapsk Vallhund) is a breed of dog from Finland, one of three Lapphund breeds developed from a type of dog used by the Sami people for herding and guarding their reindeer.',
        'https://en.wikipedia.org/wiki/Lapponian_Herder',
        [365, 278]),
    Dog(
        'Finnish Spitz',
        'assets/finnish_spitz.jpg',
        'The Finnish Spitz (Finnish: suomenpystykorva) is a breed of dog originating in Finland. The breed was originally trained to hunt all types of game from squirrels and other rodents to bears. It is a "bark pointer", indicating the position of game by barking, and drawing the game animal\'s attention to itself, allowing an easier approach for the hunter. Its original game hunting purpose was to point to game that fled into trees, such as grouse, and capercaillies, but it also serves well for hunting elk. Some individuals have even been known to go after a bear. In its native country, the breed is still mostly used as a hunting dog. The breed is friendly and in general loves children, so it is suitable for domestic life. The Finnish Spitz has been the national dog of Finland since 1979.',
        'https://en.wikipedia.org/wiki/Finnish_Spitz',
        [691, 660]),
    Dog(
        'Finnish Hound',
        'assets/finnish_hound.jpg',
        'The Finnish Hound (suomenajokoira, Finnish Bracke) is a breed of dog originally bred for hunting hare and fox.',
        'https://en.wikipedia.org/wiki/Finnish_Hound',
        [1096, 1046]),
    Dog(
        'Karelian Bear Dog',
        'assets/karelian_bear_dog.JPG',
        'The Karelian Bear Dog (Karjalankarhukoira) is a Finnish breed of dog. In its home country, it is regarded as a national treasure. Karelian Bear Dogs will hunt a variety of animals. Its quick reflexes and fearless nature have made it very popular for hunting large game including small black bears, moose, and wild boar. It was the breed\'s ability to hunt bears that earned the breed its name. The Karelian Bear Dog is among the top 10 most common dog breeds in Finland.',
        'https://en.wikipedia.org/wiki/Karelian_Bear_Dog',
        [701, 758]),
  ];
}
