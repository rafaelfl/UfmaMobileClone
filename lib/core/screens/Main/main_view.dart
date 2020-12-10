import 'package:UfmaMobileClone/core/components/main_drawer.dart';
import 'package:UfmaMobileClone/core/components/my_tab_icon.dart';
import 'package:UfmaMobileClone/core/components/panels/BalancePanel/balance_panel_view.dart';
import 'package:UfmaMobileClone/core/components/panels/dinner_panel.dart';
import 'package:UfmaMobileClone/core/components/panels/lunch_panel.dart';
import 'package:UfmaMobileClone/core/screens/Main/main_controller.dart';
import 'package:UfmaMobileClone/store/balance_store.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreenController _controller;

  final BalanceStore balanceStore;

  MainScreen({@required this.balanceStore}) {
    this._controller = MainScreenController(this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MainDrawer(),
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
            BalancePanel(balanceStore: this.balanceStore),
            LunchPanel(),
            DinnerPanel(),
          ],
        ),
      ),
    );
  }

  void setBalance(double balance) {
    // usar o setState para atualizar
  }
}
