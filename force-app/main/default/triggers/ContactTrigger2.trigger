trigger ContactTrigger2 on Contact (before insert, before update) {
for(Contact cont : Trigger.new){
    System.debug('name' + cont.Name);
    System.debug('account name ' + cont.AccountId);
    System.debug('phone number ' + cont.Phone);
    System.debug('email' + cont.Email);
    
}
}