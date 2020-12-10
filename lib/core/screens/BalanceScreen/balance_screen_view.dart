import 'package:UfmaMobileClone/core/components/action_button.dart';
import 'package:UfmaMobileClone/store/balance_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BalanceScreen extends StatelessWidget {
  final BalanceStore balanceStore;

  const BalanceScreen({@required this.balanceStore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Observer(builder: (_) {
              return Text("R\$ ${this.balanceStore.balance}",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400));
            }),
            SizedBox(height: 35),
            ActionButton(
                text: "Voltar", onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
