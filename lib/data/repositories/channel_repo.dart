import '../models/channel.dart';

class ChannelRepo {
  List<Channel> _channels = [
    Channel(title: 'channel 1', link: '1'),
    Channel(title: 'channel 2', link: '2'),
    Channel(title: 'channel 2', link: '2'),
  ];

  List<Channel> get getChannels => List.from(_channels);
}
