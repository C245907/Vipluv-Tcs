public class EditEffortController {
    
public Effort_Information__c EffortObj,NewEffortObj;
public String EffortId {get;set;}
public Boolean refreshPage {get;set;}
Public String EffortDate {get;set;} 
Public String EffortValue{get;set;} 


    public EditEffortController(ApexPages.StandardController controller) {
        
EffortId = ApexPages.CurrentPage().getParameters().get('Id');
EffortDate   = ApexPages.CurrentPage().getParameters().get('date');
EffortValue      = ApexPages.CurrentPage().getParameters().get('effortOnDate');

EffortObj = (Effort_Information__c)controller.getRecord();

EffortObj.Effort_on_Date__c = Integer.valueOf(EffortValue);
EffortObj.Date__c         = date.parse(EffortDate);
 
    }
    
    
    public void EditEffort()
{
try
{
NewEffortObj = [select id, Name, Date__c, Effort_on_Date__c from Effort_Information__c where id =: EffortId];
NewEffortObj.Effort_on_Date__c = EffortObj.Effort_on_Date__c;
NewEffortObj.Date__c        = EffortObj.Date__c;

update NewEffortObj;
refreshPage=true;
}catch(Exception E)
{
System.debug('The following exception has occurred: ' + E.getMessage());
}

}


}