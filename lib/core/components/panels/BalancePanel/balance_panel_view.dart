import 'package:UfmaMobileClone/core/components/action_button.dart';
import 'package:UfmaMobileClone/store/balance_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BalancePanel extends StatelessWidget {
// class BalancePanel extends StatefulWidget {
//   @override
//   _BalancePanelState createState() => _BalancePanelState();
// }

// class _BalancePanelState extends State<BalancePanel> {
  // TODO: baixar info da Internet
  // https://flutter.dev/docs/cookbook/networking/fetch-data

  // double currentBalance = 0.0;

  final BalanceStore balanceStore;

  const BalancePanel({@required this.balanceStore});

  // @override
  // void initState() {
  //   super.initState();

  //   // inicialização do widget
  // }

  // void addBalance() {
  // setState(() {
  //   this.currentBalance += 10.0;
  // });
  // }

  // void resetBalance() {
  // setState(() {
  //   this.currentBalance = 0.0;
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0ECF1),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Observer(builder: (_) {
              return Text("R\$ ${this.balanceStore.balance}",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400));
            }),
            SizedBox(height: 35),
            ActionButton(
              text: "Adicionar saldo",
              onPressed: () => this.balanceStore.addBalance(),
            ),
            SizedBox(height: 10),
            ActionButton(
              text: "Torrar saldo 🍞",
              onPressed: () => this.balanceStore.resetBalance(),
            ),
            SizedBox(height: 10),
            ActionButton(
              text: "Vai para a tela de saldo ⚽️",
              onPressed: () => Navigator.pushNamed(context, "/balance"),
            ),
            SizedBox(height: 35),
            Text("Últimas transações",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 153, 153, 153))),
            SizedBox(height: 25),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Text(
                    "R\$ 1.25",
                    style: TextStyle(fontSize: 16),
                  ),
                  title: Text("Hoje, 12:19", style: TextStyle(fontSize: 16)),
                  trailing: Text("Débito", style: TextStyle(fontSize: 16)),
                ),
                ListTile(
                  leading: Text(
                    "R\$ 1.25",
                    style: TextStyle(fontSize: 16),
                  ),
                  title: Text("Hoje, 12:19", style: TextStyle(fontSize: 16)),
                  trailing: Text("Débito", style: TextStyle(fontSize: 16)),
                ),
                ListTile(
                  leading: Text(
                    "R\$ 1.25",
                    style: TextStyle(fontSize: 16),
                  ),
                  title: Text("Hoje, 12:19", style: TextStyle(fontSize: 16)),
                  trailing: Text("Débito", style: TextStyle(fontSize: 16)),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
