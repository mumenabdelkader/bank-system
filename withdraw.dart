import 'account.dart';
import 'transaction.dart';
import 'rollback.dart';

class Withdraw extends Transaction implements Rollback {
   late double amount ;
  
   Withdraw(double am){
    
    amount=am;
   
   }

  @override
  double execute(Account a ) {
    double newnum=a.balance;
    if(a.balance>amount){
     newnum=a.balance-amount;
    }
    else {
      print('this amount more than your balance ');
    }
   return newnum;
  
   
  }
  
  @override
  double cancelTransaction(Account a) {
   double newnum=a.balance+amount;
   return newnum;
  }
  
   

}