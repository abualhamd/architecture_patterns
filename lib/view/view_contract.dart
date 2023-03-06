import '../data/models/channel.dart';

abstract class ViewContract {
  void displayChannels({required List<Channel> channels});
}
