import 'package:UfmaMobileClone/core/screens/BalanceScreen/balance_screen_view.dart';
import 'package:UfmaMobileClone/store/balance_store.dart';
import 'package:flutter/material.dart';
import 'package:UfmaMobileClone/core/screens/Main/main_view.dart';

void main() {
  BalanceStore _balanceStore = BalanceStore();

  runApp(MaterialApp(
    title: "UFMA Mobile Clone",
    // home: MainScreen(balanceStore: _balanceStore),
    initialRoute: "/",
    routes: {
      "/": (context) => MainScreen(balanceStore: _balanceStore),
      "/balance": (context) => BalanceScreen(balanceStore: _balanceStore),
    },
  ));
}
