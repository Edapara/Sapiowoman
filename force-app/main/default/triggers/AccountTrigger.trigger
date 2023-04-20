trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
System.debug('____trigger start____');

List<Account> newAccount = trigger.new;
if(trigger.isAfter){
    System.debug('after insert/update new records ' +  newAccount);
}
/*if (trigger.isAfter) {
    System.debug('after inser/update new record : ' + trigger.new);
    
}
System.debug('===trigger end===');*/

/*System.debug('trigger.isbefore --> ' + trigger.isBefore);
System.debug('trigger.isafter --> ' + trigger.isAfter);

System.debug('trigger.isinsert --> ' + trigger.isInsert);
System.debug('trigger.isupdate --> ' + trigger.isUpdate);


if (trigger.isBefore && trigger.isInsert) {
    System.debug('before insert trigger called');
}
if (trigger.isAfter && trigger.isInsert) {
    System.debug('after insert trigger called'); 
}


if (trigger.isBefore && trigger.isUpdate) {
    System.debug('before update trigger called');
}
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('after update trigger called');
    }*/


/*
system.debug('trigger.isInsert---> ' + trigger.isInsert);s
if (trigger.isInsert) {
    System.debug('before insert trigger called');
    
}
System.debug('trigger.isupdate---> ' + trigger.isUpdate);
if (trigger.isUpdate) {
    System.debug('before update trigger called');
}*/







/*System.debug('trigger.isBefore --> ' + trigger.isBefore);
System.debug('trigger.isAfter --> ' + trigger.isAfter);


if(trigger.isBefore){
    System.debug('before insert trigger called.');

}

if(trigger.isAfter){
System.debug('after insert trigger called');
}*/
}

