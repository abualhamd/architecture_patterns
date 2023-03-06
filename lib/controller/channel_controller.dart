import '../data/channel_model.dart';

class ChannelController {
  static bool loading = true;
  static Channel getChannelInfo() {
    return Channel.fromJson(json: {
      'title': 'channel 1',
      'link': 'link',
    });
  }
}
