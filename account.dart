class Account {
   late  int accountnumber ;
    late String ownername;
    late double balance;
    
   void setaccountnumber(int anum){
      accountnumber=anum;
    }
    void setownername(String own){
      ownername=own;
    }
    void setbalance(double bal){
      balance=bal;
    }
    void printacc(){
      print('your name is : $ownername');
      print('your balance is : $balance');
      print('your accountnumber is : $accountnumber');
    }

}