class Chat {
  String? image;
  String? title;
  String? icon;
  String? subtitle;

  Chat({this.title, this.subtitle, this.image, this.icon}) {
    title;
    subtitle;
    image;
    icon;
  }
}

List<Chat> data = [
  Chat(
    title: 'All The Bills',
    subtitle: 'Payment and income ',
    image: 'assets/profits.png',
  ),
  Chat(
    title: 'Transections',
    subtitle: 'Payment and income ',
    image: 'assets/Transection.png',
  ),
];
