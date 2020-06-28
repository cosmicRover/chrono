import 'package:flutter/material.dart';

class DestinationView extends StatefulWidget {
  final String time;
  final String car;

  const DestinationView(this.time, this.car);

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  void initState() {
    print("passed in values: ${widget.time} ${widget.car}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
