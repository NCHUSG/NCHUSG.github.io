import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';
import 'package:io_github_nchusg/components/card.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  double width = 500;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('關於學生會')),
      drawer: MyDrawer(),
      body: Scrollbar(
          isAlwaysShown: true,
          controller: scrollController,
          child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Center(
                      child: SizedBox(
                          width:
                              (MediaQuery.of(context).size.width > width * 1.5)
                                  ? width
                                  : double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('聯絡方式',
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                const SizedBox(height: 5),
                                const LinkedCard(
                                    text: 'Email',
                                    urlHint: 'nchusg.27@gmail.com',
                                    url: 'mailto:nchusg.27@gmail.com'),
                                const LinkedCard(
                                    text: 'Facebook 粉專',
                                    urlHint: '@nchusg',
                                    url: 'https://www.facebook.com/nchusg/'),
                                const LinkedCard(
                                    text: 'Instagram',
                                    urlHint: '@nchu_sg27',
                                    url:
                                        'https://www.instagram.com/nchu_sg27/'),
                                const LinkedCard(
                                    text: 'Github',
                                    urlHint: '@NCHUSG',
                                    url: 'https://github.com/NCHUSG'),
                                Text('值班時間',
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                const SizedBox(height: 5),
                                Text('雲平樓1樓F7 週一~週五 12:00~13:00')
                              ])))))),
    );
  }
}
