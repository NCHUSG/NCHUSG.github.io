import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);
  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('社團/系學會活動補助申請')),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '社團/系學會活動補助申請',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
