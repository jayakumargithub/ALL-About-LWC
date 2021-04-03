/**
 * Created by priya on 02/04/2021.
 */

trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

           System.debug('OpportunityTriggerHandler kicked off');
           TriggerDispatcher.Run(new OpportunityTriggerHandler());

}