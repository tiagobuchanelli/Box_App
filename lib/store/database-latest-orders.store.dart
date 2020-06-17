import 'package:boxapp/models/accounts-balance.model.dart';
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

final List<AccountsBalance> listBankAccounts = <AccountsBalance>[
  new AccountsBalance(
      'Carteira', 'R\$2.500,00', '10/02/2020', '0xff13C726', 'C'),
  new AccountsBalance(
      'Banco Inter', 'R\$400,00', '10/02/2020', '0xff13C726', 'B'),
  new AccountsBalance('Bradesco', 'R\$900,00', '10/02/2020', '0xff13C726', 'B'),
  new AccountsBalance('Nubank', 'R\$8.500,00', '10/02/2020', '0xff138BC7', 'B'),
  new AccountsBalance(
      'Poupança BB', 'R\$8.500,00', '10/02/2020', '0xff138BC7', 'P'),
];
