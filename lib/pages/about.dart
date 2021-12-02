import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('關於學生會')),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '關於學生會',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
