import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;

  ActionButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
          height: 45,
          child: Center(
              child: Text(
            "Adicionar saldo",
            style: TextStyle(color: Colors.white),
          )),
          color: Color(0xFF732128)),
      onPressed: () => true,
    );
  }
}
