import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';
import 'package:io_github_nchusg/pages/about.dart';
import 'package:io_github_nchusg/pages/activity.dart';
import 'package:io_github_nchusg/pages/equipment.dart';
import 'package:io_github_nchusg/pages/links.dart';
import 'package:io_github_nchusg/pages/poster.dart';
import 'package:io_github_nchusg/pages/right.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '中興大學學生會',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: '中興大學第27屆學生會'),
        '/about': (context) => const AboutPage(),
        '/activity': (context) => const ActivityPage(),
        '/equipment': (context) => const EquipmentPage(),
        '/poster': (context) => const PosterPage(),
        '/right': (context) => const RightPage(),
        '/links': (context) => const LinksPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The website is building...',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
