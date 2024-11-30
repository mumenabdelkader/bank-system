import 'dart:core';
import 'account.dart';
import 'transaction.dart';
class Balanceinquiry extends Transaction {
   String  currencyType=" ";

  @override
  double execute(Account a) {
    return a.balance;
  }

   String currency(Account a,String type){
     if(type=="egp"){
     return a.balance.toString();
     }
     else {
      String x=(a.balance/48).toString();
       return x ;
     }
   }

}