trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

List<Task>taskList = new List<Task>();

for(Opportunity opp : [select id,StageName from Opportunity where id IN :Trigger.New])
{
if(opp.StageName == 'Closed Won')
{
String userId = UserInfo.getUserId();

  Task T = new Task();
    T.OwnerId = userId;
    T.Subject = 'Follow Up Test Task';
    T.Status = 'Open';
    T.WhatId = opp.id; 
   taskList.add(T);
}
}

if(taskList.size()>0)
{insert taskList; }

}