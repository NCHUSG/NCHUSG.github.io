import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[300],
            ),
            child: const Text(
              '很高興為您服務',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('首頁'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              }),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('海報張貼系統'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/poster');
            },
          ),
          ListTile(
            leading: const Icon(Icons.build),
            title: const Text('器材借用'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/equipment');
            },
          ),
          ListTile(
            leading: const Icon(Icons.paid),
            title: const Text('活動補助申請'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/activity');
            },
          ),
          ListTile(
            leading: const Icon(Icons.groups),
            title: const Text('學生權益'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/right');
            },
          ),
          ListTile(
            leading: const Icon(Icons.public),
            title: const Text('相關連結'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/links');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('關於學生會'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          /*
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('學生會活動'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('聯絡我們'),
          ),
          */
        ],
      ),
    );
  }
}
