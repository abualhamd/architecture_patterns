class Channel {
  String title;
  String link;

  Channel({required this.title, required this.link});

  factory Channel.fromJson({required Map<String, dynamic> json}) {
    return Channel(link: json['link'], title: json['title']);
  }

  Map<String, dynamic> toJson() {
    return {
      'link': link,
      'title': title,
    };
  }
}
