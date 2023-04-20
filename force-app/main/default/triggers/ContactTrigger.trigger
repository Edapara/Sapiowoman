trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (Trigger.isBefore ) {
   System.debug('we are in before trigger.');
   if (Trigger.isInsert ) {
     System.debug(' before insert trigger.');
      } 
  if (Trigger.isUpdate) {
     System.debug('before  updatetrigger.');
           }
    }


   



      if (Trigger.isAfter ) {
      System.debug('we are in after trigger.');
      if (Trigger.isInsert ) {
          System.debug('after insert trigger.');
                          }
       if (Trigger.isUpdate ) {
          System.debug('after update trigger.');
                               }
                }


   
 
 }