import 'package:architecture_patterns/controller/channel_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ChannelController.loading
                    ? 'loading'
                    : ChannelController.getChannelInfo().title),
                TextButton(
                  onPressed: (() {
                    setState(() {
                      ChannelController.loading = !ChannelController.loading;
                    });
                  }),
                  child: Text('get info'),
                ),
              ]),
        ),
      ),
    );
  }
}
