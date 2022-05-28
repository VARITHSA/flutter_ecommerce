class MangaModel {
  static final items = [
    Item(
        id: 001,
        name: "Onepiece",
        disc: "The pirate story of being king of pirates.",
        price: 100,
        color: "#33505a",
        image:
            "https://static.wikia.nocookie.net/onepiece/images/c/c6/Volume_100.png/revision/latest/scale-to-width-down/1000?cb=20210903160940"),
  ];
}

class Item {
  final int id;
  final String name;
  final String disc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.disc,
      required this.price,
      required this.color,
      required this.image});
}
