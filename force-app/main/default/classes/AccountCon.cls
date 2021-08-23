public class AccountCon{  
  public Account accObj{get;set;} 
   /*Commented code for testing for feature branch */
  public AccountCon(){  
  accObj = [SELECT id,Name FROM Account LIMIT 1];  
  }  
 }