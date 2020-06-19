import 'package:boxapp/models/accounts-balance.model.dart';
import 'package:boxapp/models/goals.model.dart';
import 'package:boxapp/models/latest-orders.model.dart';

final List<LatestOrders> imgList = <LatestOrders>[
  new LatestOrders('Maria Eliza', 'R\$2.500,00', '10/02/2020', '0xff13C726'),
  new LatestOrders('Cristiane Alves', 'R\$400,00', '10/02/2020', '0xff13C726'),
  new LatestOrders('Paulo Soares', 'R\$900,00', '10/02/2020', '0xff13C726'),
  new LatestOrders('Ronaldinho', 'R\$8.500,00', '10/02/2020', '0xff138BC7'),
  new LatestOrders('Roberto Carlos', 'R\$6.500,00', '10/02/2020', '0xff13C726'),
];

final List<AccountsBalance> listAccountsBalance = <AccountsBalance>[
  new AccountsBalance(
      'Maria Eliza', 'R\$2.500,00', '10/02/2020', '0xff13C726', 'P'),
  new AccountsBalance(
      'Cristiane Alves', 'R\$400,00', '10/02/2020', '0xff13C726', 'R'),
  new AccountsBalance(
      'Paulo Soares', 'R\$900,00', '10/02/2020', '0xff13C726', 'P'),
  new AccountsBalance(
      'Ronaldinho', 'R\$8.500,00', '10/02/2020', '0xff138BC7', 'P'),
  new AccountsBalance(
      'Roberto Carlos', 'R\$6.500,00', '10/02/2020', '0xff13C726', 'R'),
];

final List<AccountsBalance> lastOrders = <AccountsBalance>[
  new AccountsBalance(
      'Fabiane Santos', 'R\$2.500,00', '10/02/2020', '0xff13C726', 'P'),
  new AccountsBalance(
      'Priscila alves', 'R\$1.900,00', '10/01/2020', '0xff13C726', 'R'),
  new AccountsBalance(
      'Paulo André', 'R\$900,00', '10/02/2020', '0xff13C726', 'P'),
  new AccountsBalance(
      'Criatian Soares', 'R\$8.500,00', '10/02/2020', '0xff138BC7', 'P'),
  new AccountsBalance(
      'Roberto Melo', 'R\$6.500,00', '10/02/2020', '0xff13C726', 'R'),
];

final List<AccountsBalance> listBankAccounts = <AccountsBalance>[
  new AccountsBalance('Carteira', 'R\$2.500,00', '10/02/2020', 'ffc107', 'C'),
  new AccountsBalance('Banco Inter', 'R\$400,00', '10/02/2020', 'FF5722', 'B'),
  new AccountsBalance('Bradesco', 'R\$900,00', '10/02/2020', 'cc092f', 'B'),
  new AccountsBalance('Nubank', 'R\$8.500,00', '10/02/2020', '9C27B0', 'B'),
  new AccountsBalance(
      'Poupança BB', 'R\$8.500,00', '10/02/2020', '2196F3', 'P'),
];

final List<GoalsModel> listGoals = <GoalsModel>[
  new GoalsModel('2196F3', 'Vendas', 'R\$80.000', '925.240,65', 'dark'),
  new GoalsModel(
      'FBC02D', 'Investimento', 'R\$180.000,00', '125.940,95', 'light'),
];
