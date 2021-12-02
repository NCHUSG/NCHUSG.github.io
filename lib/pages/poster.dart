import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class PosterPage extends StatefulWidget {
  const PosterPage({Key? key}) : super(key: key);
  @override
  State<PosterPage> createState() => _PosterPageState();
}

class _PosterPageState extends State<PosterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('海報張貼系統')),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '海報張貼系統',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
