public with sharing class ContactTriggerHandler implements ITrigger{

    /***************** BEFORE EVETNTS *********************/
    public void bulkBefore(){}
    
    public void beforeInsert(List<Sobject> newContacts){}

    public void beforeUpdate(List<Sobject> newContacts, List<Sobject> oldContacts, 
                                Map<Id, Sobject> newContactMap, Map<Id, Sobject> oldContactMap){}

    public void beforeDelete(List<Sobject> oldContacts,Map<Id,Sobject> oldContactMap){}  
    

    /***************** AFTER EVENTS *********************/
    public void bulkAfter(){}

    public void afterInsert(List<Sobject> newContacts,Map<Id,Sobject> newContactMap){}

    public void afterUpdate(List<Sobject> newContacts,List<Sobject> oldContacts,
                                Map<Id,Sobject> newContactMap, Map<Id,Sobject> oldContactMap){}

    public void afterDelete(List<Sobject> oldContacts,Map<Id,Sobject> oldContactMap){}


    /**************** FINAL EXECUTION ******************/
    public void andFinally(){}
}