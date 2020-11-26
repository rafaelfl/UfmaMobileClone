import 'package:UfmaMobileClone/core/components/action_button.dart';
import 'package:flutter/material.dart';

class BalancePanel extends StatefulWidget {
  @override
  _BalancePanelState createState() => _BalancePanelState();
}

class _BalancePanelState extends State<BalancePanel> {
  double currentBalance = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0ECF1),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("R\$ ${this.currentBalance}",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
            SizedBox(height: 35),
            ActionButton(text: "${this.currentBalance}"),
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
