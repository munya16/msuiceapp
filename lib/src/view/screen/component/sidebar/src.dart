class Card {
  String? title;
  String? description;
  String? image;

  Card({this.title, this.description, this.image});
}

List<Card> cards = [
  Card(
      title: 'CLERK',
      description:
      'Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron is a species of flowering plant native to tropical forests of southern Mexico.',
      image:
      'assets/images/widow.jpg'),
  Card(
      title: 'TREASURER',
      description:
      'Takes care of the church funds.',
      image:
      'assets/images/widow.jpg'),
  Card(
      title: 'YOUTH LEADER',
      description:
      'Leads young people in these evil days',
      image:
      'assets/images/widow.jpg'),
  Card(
      title: 'THE MUSIC DIRECTOR',
      description:
      'Leads the church in singing joyful praises',
      image:
      'assets/images/widow.jpg'),
];
