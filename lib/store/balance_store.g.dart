// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BalanceStore on _BalanceStoreBase, Store {
  final _$balanceAtom = Atom(name: '_BalanceStoreBase.balance');

  @override
  double get balance {
    _$balanceAtom.reportRead();
    return super.balance;
  }

  @override
  set balance(double value) {
    _$balanceAtom.reportWrite(value, super.balance, () {
      super.balance = value;
    });
  }

  final _$_BalanceStoreBaseActionController =
      ActionController(name: '_BalanceStoreBase');

  @override
  void addBalance() {
    final _$actionInfo = _$_BalanceStoreBaseActionController.startAction(
        name: '_BalanceStoreBase.addBalance');
    try {
      return super.addBalance();
    } finally {
      _$_BalanceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetBalance() {
    final _$actionInfo = _$_BalanceStoreBaseActionController.startAction(
        name: '_BalanceStoreBase.resetBalance');
    try {
      return super.resetBalance();
    } finally {
      _$_BalanceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
balance: ${balance}
    ''';
  }
}
