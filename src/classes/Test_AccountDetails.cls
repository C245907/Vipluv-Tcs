public with sharing class Test_AccountDetails
{
 public List<Account> AccountDetails {get; set;}
 
public Test_AccountDetails (ApexPages.StandardController controller)
{
 
 AccountDetails = new List<Account>();
 
 AccountDetails = [select Id,Name,AccountNumber from account limit 5]; 

}

}