import 'package:architecture_patterns/data/models/channel.dart';
import 'package:architecture_patterns/data/repositories/channel_repo.dart';
import 'package:architecture_patterns/view/view_contract.dart';

class Presenter {
  ViewContract view;
  ChannelRepo channelRepo;

  Presenter({required this.view, required this.channelRepo});

  void getChannels() {
    final channels = channelRepo.getChannels;
    view.displayChannels(channels: channels);
  }
}
