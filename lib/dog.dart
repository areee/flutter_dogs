class Dog {
  String breedName;
  String imageUrl;

  Dog(
    this.breedName,
    this.imageUrl,
  );

  static List<Dog> finnishBreeds = [
    Dog('Finnish Lapphund', 'assets/finnish_lapphund.jpg'),
    Dog('Lapponian Herder', 'assets/lapponian_herder.jpg'),
    Dog('Finnish Spitz', 'assets/finnish_spitz.jpg'),
    Dog('Finnish Hound', 'assets/finnish_hound.jpg'),
    Dog('Karelian Bear Dog', 'assets/karelian_bear_dog.JPG'),
  ];
}
