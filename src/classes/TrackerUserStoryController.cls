public class TrackerUserStoryController
{

public List<User_Stories__c> UserStoryRecord{get; set;}
public Id idOfUserStory {get; set;}
public User_Stories__c UserStory;
public Effort_Information__c EffortRecord;


public TrackerUserStoryController (ApexPages.StandardController stdController)
{

UserStoryRecord  = new List<User_Stories__c> ();

Id currentUserId = UserInfo.getUserId();

UserStoryRecord  = [select id, Name, Total_Effort_Req__c, Total_Effort_Covered__c, Tracker__c, (select id, Name, Date__c, Effort_on_Date__c from Effort_Informations__r ORDER BY Date__c ASC) from User_Stories__c where Tracker__c =: currentUserId];

}

public pagereference save ()
{
update UserStoryRecord;
return null;

}

public pagereference cancel ()
{
return null;

}





public pagereference datasave()
{
    UserStory = [select id, Name, Total_Effort_Req__c, Total_Effort_Covered__c, Tracker__c from User_Stories__c where Id =: idOfUserStory];

if(UserStory!=null)
        update UserStory;
        
        return null;
}

}