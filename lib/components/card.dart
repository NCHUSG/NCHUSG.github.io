import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedCard extends StatelessWidget {
  /// Creates a card contains link information.
  ///
  /// The [Text] is the title of the card.
  ///
  /// The [urlHint] is the subtitle of the card if [urlHint] is non-null,
  /// else the subtitle is [url] instead.
  const LinkedCard(
      {Key? key,
      required this.text,
      required this.url,
      this.urlHint,
      this.width = 500})
      : super(key: key);
  final double width;
  final String text;
  final String url;
  final String? urlHint;
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
          subtitle: Text(urlHint ?? url),
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
