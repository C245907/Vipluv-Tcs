public with sharing class PopupTest {  
public id accountId {get;set;}
public String Name {get;set;}
    public List<Account> getAccounts()
    {
        List <Account> accounttList = new List<Account>();
        accounttList = [Select Id, Name from Account LIMIT 10];
        
        if (accounttList!=NULL){
        accountId = accounttList[0].id;
        Name = accounttList[0].name;
        }
        return accounttList ;
    }

}