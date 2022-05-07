import 'package:flutter/material.dart';

import '../main.dart';

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
                    backgroundImage: NetworkImage(''),
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Username',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: const Divider(),
          ),
          ListTile(
            leading: Icon(Icons.newspaper_outlined),
            title: Text('News'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline_rounded),
            title: Text('My Favourites'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: const Divider(),
          ),
          ListTile(
            leading: Icon(Icons.home_rounded),
            title: Text('About'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {Navigator.of(context).pop();
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => MyApp()));},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
