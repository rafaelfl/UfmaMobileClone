import 'package:mobx/mobx.dart';
part 'balance_store.g.dart';

class BalanceStore = _BalanceStoreBase with _$BalanceStore;

abstract class _BalanceStoreBase with Store {
  @observable
  double balance = 0.0;

  @action
  void addBalance() {
    this.balance += 10.0;
  }

  @action
  void resetBalance() {
    this.balance = 0.0;
  }
}
