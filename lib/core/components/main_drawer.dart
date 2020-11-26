import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://diariodorio.com/wp-content/uploads/2020/07/daleopizzaria_20200710_144435_0.jpg"),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF732128),
            ),
          ),
          ListTile(
            title: Text("Opção 1"),
            onTap: () => true,
          ),
          ListTile(
            title: Text("Opção 2"),
            onTap: () => true,
          ),
          ListTile(
            title: Text("Opção 3"),
            onTap: () => true,
          ),
        ],
      ),
    );
  }
}
