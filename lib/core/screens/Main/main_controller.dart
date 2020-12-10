import 'package:UfmaMobileClone/core/screens/Main/main_view.dart';
import 'package:UfmaMobileClone/repository/balance_repository.dart';
import 'package:UfmaMobileClone/repository/balance_repository_http.dart';

class MainScreenController {
  final MainScreen mainScreen;
  final BalanceRepository balanceRepository = BalanceRepositoryHttp();

  MainScreenController(this.mainScreen);

  void consultaSaldo() {
    // TODO: lógica de acesso

    double balance = balanceRepository.getBalance();

    mainScreen.setBalance(balance);
  }
}
