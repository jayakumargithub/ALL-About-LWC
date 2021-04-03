/**
 * Created by priya on 02/04/2021.
 */

public with sharing class OpportunityTriggerHandler implements ITriggerHandler{

    public void BeforeInsert(List<SObject> newItems) {
        System.debug('BeforeInsert executed');
    }

    public void BeforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
    }

    public void BeforeDelete(Map<Id, SObject> oldItems) {
    }

    public void AfterInsert(List<SObject> newItems) {
        System.debug('AfterInsert executed');
    }

    public void AfterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
        System.debug('AfterUpdate executed');
        OpportunityClosedOwnStatusAction.CreateTasks(newItems);
    }

    public void AfterDelete(Map<Id, SObject> oldItems) {
    }

    public void AfterUnDelete(Map<Id, SObject> oldItems) {
    }

    public Boolean IsDisabled() {
        return true; //this trigger to work make it false
    }
}