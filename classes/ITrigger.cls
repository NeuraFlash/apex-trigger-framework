/**
 * Interfce ITrigger
 *
 * Contains methods Trigger handlers must implement to enforce best practice and bulkification of triggers. 
 */
public interface ITrigger {
    /**
     * bulkBefore
     *
     * This method is called prior to execution of a BEFORE trigger. Use this to cache
     * any data required into maps prior execution of the trigger.
     */
    void bulkBefore();

    /**
     * bulkAfter
     *
     * This method is called prior to execution of an AFTER trigger. Use this to cache
     * any data required into maps prior execution of the trigger.
     */
    void bulkAfter();

    /**
     * beforeInsert
     *
     * This method is called for records during a BEFORE
     * trigger. Never execute any SOQL/SOSL etc in this and other iterative methods.
     */
    void beforeInsert(List<SObject> newlstObj); 
    /**
     * beforeUpdate
     *
     * This method is called for records to be updated during a BEFORE
     * trigger.
     */
    void beforeUpdate(List<SObject> newlstObj,List<SObject> oldlstObj,Map<Id,SObject> newMapObj, Map<Id,SObject> oldMapObj);

    /**
     * beforeDelete
     *
     * This method is called for records to be deleted during a BEFORE
     * trigger.
     */
    void beforeDelete(List<SObject> oldlstObj,Map<Id,SObject> oldMapObj);

    /**
     * afterInsert
     *
     * This method is called  for records inserted during an AFTER
     * trigger. Always put field validation in the 'After' methods in case another trigger
     * has modified any values. The record is 'read only' by this point.
     */
    void afterInsert(List<SObject> newlstObj,Map<Id,SObject> newMapObj);

    /**
     * afterUpdate
     *
     * This method is called for records updated during an AFTER
     * trigger.
     */
    void afterUpdate(List<SObject> newlstObj,List<SObject> oldlstObj,Map<Id,SObject> newMapObj, Map<Id,SObject> oldMapObj);

    /**
     * afterDelete
     *
     * This method is called for records deleted during an AFTER
     * trigger.
     */
    void afterDelete(List<SObject> oldlstObj,Map<Id,SObject> oldMapObj);

    /**
     * andFinally
     *
     * This method is called once all records have been processed by the trigger. Use this 
     * method to accomplish any final operations such as creation or updates of other records.
     */
    void andFinally();
}