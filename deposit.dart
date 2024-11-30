import 'account.dart';
import 'transaction.dart';
import 'rollback.dart';
class Deposit extends Transaction implements Rollback{
  late double amount;
  Deposit(double am){
    amount=am;
  }
  @override
  double execute(Account a) {
     double newnum=a.balance+amount;
   return newnum;
  }
  
  @override
  double cancelTransaction(Account a) {
   double newnum=a.balance-amount;
   return newnum;
  }



}