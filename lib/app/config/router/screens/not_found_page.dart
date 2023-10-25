import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key, required this.route}) : super(key: key);

  final String route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No Page Found\n $route'),
      ),
    );
  }
}
