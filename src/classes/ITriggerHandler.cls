/**
 * Created by priya on 02/04/2021.
 */

public interface ITriggerHandler {
    void BeforeInsert(List<SObject>  newItems);
    void BeforeUpdate(Map<Id,SObject> newItems, Map<Id,SObject> oldItems);
    void BeforeDelete(Map<Id,SObject> oldItems);
    void AfterInsert(List<SObject> newItems);
    void AfterUpdate(Map<Id,SObject> newItems, Map<Id,SObject> oldItems);
    void AfterDelete(Map<Id,SObject> oldItems);
    void AfterUnDelete(Map<Id,SObject> oldItems);
    Boolean IsDisabled();
}