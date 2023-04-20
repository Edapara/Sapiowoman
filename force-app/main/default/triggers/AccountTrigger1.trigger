trigger AccountTrigger1 on Account (before insert, after insert, before update, after update) {
 /*for ( Account acc : Trigger.new){
    System.debug('account name' + acc.Name);
    System.debug('rating :' + acc.Rating);
    System.debug('description' + acc.Description);

 }*/
 if (trigger.isBefore){
   if(trigger.isInsert){
      for( Account eacacc : trigger.new){
      System.debug('trigger new is ' + trigger.new);
      System.debug('trigger old is ' + trigger.old);
      System.debug('trigger newmap is ' + trigger.newMap);
      System.debug('trigger oldmap is ' + trigger.oldMap);
   }
 }
 }
 if (trigger.isUpdate){
      for( Account eacacc : trigger.new){
      System.debug('trigger new is ' + trigger.new);
      System.debug('trigger old is ' + trigger.old);
      System.debug('trigger newmap is ' + trigger.newMap);
      System.debug('trigger oldmap is ' + trigger.oldMap);
   }
 }

 if (trigger.isAfter){
   if(trigger.isInsert)
   for( Account eacacc : trigger.new){
      System.debug('trigger new is ' + trigger.new);
      System.debug('trigger old is ' + trigger.old);
      System.debug('trigger newmap is ' + trigger.newMap);
      System.debug('trigger oldmap is ' + trigger.oldMap);
      System.debug('trigger oldmap is ' + trigger.newMap.get(eacacc.Id));
   }
 }
   if (trigger.isUpdate){
      for( Account eacacc : trigger.new){
      System.debug('trigger new is ' + trigger.new);
      System.debug('trigger old is ' + trigger.old);
      System.debug('trigger newmap is ' + trigger.newMap);
      System.debug('trigger oldmap is ' + trigger.oldMap);
      System.debug('trigger oldmap is ' + trigger.oldMap.get(eacacc.Id));
   }
 }
}
