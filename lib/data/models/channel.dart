class Channel {
  String title;
  String link;

  Channel({required this.title, required this.link});

  factory Channel.fromJson({required Map<String, dynamic> json}) =>
      Channel(title: json['title'], link: json['link']);

  Map<String, dynamic> toJson() => {'title': title, 'link': link};
}
