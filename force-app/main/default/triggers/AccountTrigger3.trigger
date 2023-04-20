trigger AccountTrigger3 on Account (before insert, after insert, before update, after update) {
if (trigger.isBefore &&  trigger.isInsert) {
for (account acc : trigger.new) {
    if( )
}

}

}