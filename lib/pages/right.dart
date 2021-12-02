import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class RightPage extends StatefulWidget {
  const RightPage({Key? key}) : super(key: key);
  @override
  State<RightPage> createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('學生權益')),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '學生權益',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
