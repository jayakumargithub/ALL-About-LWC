/**
 * Created by priya on 02/04/2021.
 */

public with sharing class TriggerDispatcher{
    public static void Run(ITriggerHandler triggerHandler){
        if(triggerHandler.IsDisabled()){
            return;
        }
        if(Trigger.isBefore){
            if(Trigger.isInsert){
                triggerHandler.BeforeInsert(Trigger.new);
            }
            else if( Trigger.isUpdate){
                triggerHandler.BeforeUpdate(Trigger.newMap, Trigger.oldMap);
            }
            else if(Trigger.isDelete){
                triggerHandler.BeforeDelete(Trigger.oldMap);
            }
        }else if(Trigger.isAfter){
            if(Trigger.isInsert){
                triggerHandler.AfterInsert(Trigger.new);
            }
            else if( Trigger.isUpdate){
                triggerHandler.AfterUpdate(Trigger.newMap, Trigger.oldMap);
            }
            else if(Trigger.isDelete){
                triggerHandler.AfterDelete(Trigger.oldMap);
            }
            else if(Trigger.isUndelete){
                triggerHandler.AfterUnDelete(Trigger.oldMap);
            }
        }
    }
}