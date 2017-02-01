public class NewEffortController {
    
public User_Stories__c UserStoryObj;
public Effort_Information__c EffortInfoObj;    
public Boolean refreshPage {get;set;}
Public String UserSoryId{get;set;}
 

public NewEffortController (ApexPages.StandardController controller)
{

UserSoryId    = ApexPages.CurrentPage().getParameters().get('Id');

UserStoryObj = (User_Stories__c)controller.getRecord();

 
}
public void NewEffort()
{
try
{
    EffortInfoObj = new Effort_Information__c();
if(UserStoryObj!=null)
{
EffortInfoObj.Name = 'Effort on '+UserStoryObj.Date__c;   
EffortInfoObj.User_Story__c = UserSoryId;
EffortInfoObj.Effort_on_Date__c = UserStoryObj.Effort_on_Date__c;
EffortInfoObj.Date__c = UserStoryObj.Date__c;    
insert EffortInfoObj;
}
else
{
system.debug('The object is null'); 
}
refreshPage=true;
}catch(Exception E)
{
system.debug('The following exception has occurred: ' + E.getMessage());
}

}


}