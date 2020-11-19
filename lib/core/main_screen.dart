import 'package:UfmaMobileClone/core/components/my_tab_icon.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
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
        ),
        appBar: AppBar(
          title: Text("Restaurante"),
          backgroundColor: Color(0xFF732128),
          bottom: TabBar(
            tabs: [
              MyTabIcon(myIcon: Icons.attach_money, myText: "SALDO"),
              MyTabIcon(myIcon: Icons.wb_sunny, myText: "ALMOÇO"),
              MyTabIcon(myIcon: Icons.brightness_2, myText: "JANTAR"),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 6,
            labelPadding: EdgeInsets.only(bottom: 5),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color(0xFFF0ECF1),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("R\$ 8.25",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
