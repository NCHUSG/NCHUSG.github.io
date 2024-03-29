import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';
import 'package:io_github_nchusg/components/card.dart';

class LinksPage extends StatefulWidget {
  const LinksPage({Key? key}) : super(key: key);
  @override
  State<LinksPage> createState() => _LinksPageState();
}

class _LinksPageState extends State<LinksPage> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('相關連結')),
        drawer: const MyDrawer(),
        body: Scrollbar(
            controller: scrollController,
            isAlwaysShown: true,
            child: SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                          LinkedCard(
                              text: '資訊公開專區', url: 'https://reurl.cc/6Dnyx5'),
                          LinkedCard(
                              text: '會長令、各部門公告',
                              url: 'https://reurl.cc/W3zM5y'),
                          LinkedCard(
                              text: '第27屆總預算案', url: 'https://reurl.cc/8n7KbR'),
                          LinkedCard(
                              text: '第27屆總決算案', url: 'https://reurl.cc/R0gXnx'),
                          LinkedCard(
                              text: '學權申訴系統', url: 'https://reurl.cc/gzaRbL'),
                          LinkedCard(
                              text: '社團海報張貼申請',
                              url: 'https://reurl.cc/kLapEG '),
                        ]))))));
  }
}
