import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedCard extends StatelessWidget {
  final double width;
  final String text;
  final String url;
  const LinkedCard(
      {Key? key, required this.text, required this.url, this.width = 500})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width > width * 1.5)
          ? width
          : double.infinity,
      child: Card(
          child: LimitedBox(
        maxWidth: 200,
        child: ListTile(
          title: Text(text),
          subtitle: Text(url),
          trailing: TextButton(
            child: const Text('前往'),
            onPressed: () {
              launch(url);
            },
          ),
        ),
      )),
    );
  }
}
