public class myUserstoryController
{

public List<Effort_Information__c> EffortInfoRecord {get; set;}

public myUserstoryController (ApexPages.StandardController stdController)
{

EffortInfoRecord = new List<Effort_Information__c> ();

Id currentUserId = UserInfo.getUserId();

EffortInfoRecord = [select id, Date__c, Effort_on_Date__c, User_Story__r.Total_Effort_Covered__c, User_Story__r.Total_Effort_Req__c, User_Story__r.Tracker__c, User_Story__r.Name from Effort_Information__c where User_Story__r.Tracker__c =: currentUserId];

}

}