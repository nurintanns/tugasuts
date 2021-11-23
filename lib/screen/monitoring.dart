import 'package:flutter/material.dart';

class Monitoring extends StatefulWidget {
  @override
  _MonitoringState createState() => new _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Monitoring'),
                ]),
          )),
    ));
  }
}
