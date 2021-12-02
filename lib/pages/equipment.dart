import 'package:flutter/material.dart';
import 'package:io_github_nchusg/components/drawer.dart';

class EquipmentPage extends StatefulWidget {
  const EquipmentPage({Key? key}) : super(key: key);
  @override
  State<EquipmentPage> createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('器材借用')),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '器材借用',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
