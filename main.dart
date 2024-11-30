import 'account.dart';
import 'withdraw.dart';
import 'deposit.dart';
import 'balanceinquiry.dart';
import 'dart:io';
void main(){
 Account a=Account();
  print('if you want to creat account enter( 1 ): ');
 int? num =int.parse(stdin.readLineSync()!);
   if (num==1){
     print('enter your name ');
     String? name= stdin.readLineSync();
     a.ownername=name!;
     print('enter the account numer ');
     int? accountnum =int.parse(stdin.readLineSync()!);
     a.accountnumber=accountnum;
     print('enter the account balance ');
     double? bal =double.parse(stdin.readLineSync()!);
     a.balance=bal;
   while(true){
    print('######################################');
    print('');
    print('if you want to review enter (2)');
    print('if you want to withdraw enter (3)');
    print('if you want to diposit enter (4)');
    print('if you want to now in another type of coin  enter (5)');
    print('if no (6)');
    print('');
    print('######################################');
    int? num2 =int.parse(stdin.readLineSync()!);
    
    
    if(num2==2){
      a.printacc();
    }
    else if(num2==3){
     print('enter the account number  ');
     int? num6 =int.parse(stdin.readLineSync()!);
     if (num6==a.accountnumber){
     print('enter the number that you want to take ');
      double? amount =double.parse(stdin.readLineSync()!);
      Withdraw w=Withdraw(amount);
       a.balance=w.execute(a);
      print('your balance becom  : ${a.balance}');
      print('');
      print('if you want to cancel this action enter ( 0 ) else (-1)');
       int? num0 =int.parse(stdin.readLineSync()!);
       if(num0==0){
          a.balance= w.cancelTransaction(a);
       }
      }
      else{
        print('this number is wrong ');
        continue;
      }
    }
    else if(num2==4){
     print('enter the account number  ');
     int? num6 =int.parse(stdin.readLineSync()!);
     if (num6==a.accountnumber){
     print('enter the number that you want to add ');
      double? amount =double.parse(stdin.readLineSync()!);
     Deposit d=Deposit(amount);
     a.balance=d.execute(a);
      print('your balance becom  : ${a.balance}');
      print('');
      print('if you want to cancel this action enter ( 0 ) else (-1)');
       int? num0 =int.parse(stdin.readLineSync()!);
       if(num0==0){
        a.balance=d.cancelTransaction(a);
       }
      }
      else{
        print('this number is rong ');
        continue;
      }
    }

    else if (num2==5){
      print('enter the type of coin ');
      String? type= stdin.readLineSync();
      Balanceinquiry b=Balanceinquiry();
      if (type=="egp") {
        print(' your balanc ${b.currency(a, type!)} ..EGP ') ;
      } else {
        print(' your balanc ${b.currency(a, type!)} ..\$ ') ;
      }

    }
    else {
      break;
    }
    

   }

   }
   else {
    print("thank you for coming ");
   }

}