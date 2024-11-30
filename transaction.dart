import 'account.dart';

   abstract class Transaction {
  late int transactionid;
  double execute(Account a);

}