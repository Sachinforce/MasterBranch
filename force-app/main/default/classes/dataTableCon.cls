public class dataTableCon {

    List<Account> accounts;

    public List<Account> getAccounts() {
        if(accounts == null)
            accounts = [SELECT name,AccountNumber, owner.name FROM account LIMIT 10];
        return accounts;
    }

}