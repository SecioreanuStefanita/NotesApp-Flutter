import 'package:flutter/material.dart';

import '../main.dart';
import 'home_screen.dart';
import 'notes_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Text(
                  'Wispers',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                InkWell(
                  onLongPress: () {},
                  child: CircleAvatar(
                    radius: 52,
                    backgroundImage: AssetImage('assets/logo.png'),
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
          ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: const Divider(),
          ),
          ListTile(
            leading: Icon(Icons.home_rounded),
            title: Text('My notes'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NotesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
