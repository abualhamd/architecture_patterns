import 'package:architecture_patterns/data/models/channel.dart';
import 'package:architecture_patterns/data/repositories/channel_repo.dart';
import 'package:architecture_patterns/presenter/presenter.dart';
import 'package:architecture_patterns/view/view_contract.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> implements ViewContract {
  List<Channel> _channels = [];
  @override
  Widget build(BuildContext context) {
    Presenter presenter = Presenter(view: this, channelRepo: ChannelRepo());
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (() => presenter.getChannels())),
        body: ListView.builder(
          itemCount: _channels.length,
          itemBuilder: ((context, index) {
            return Text(_channels[index].title); //todo
            
          }),
        ),
      ),
    );
  }

  @override
  void displayChannels({required List<Channel> channels}) {
    setState(() {
      _channels = channels;
    });
  }
}
