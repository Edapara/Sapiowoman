trigger edaPara on Account (before insert) {
for (Account ac : Trigger.new) {
    ac.Description = 'this account is createdby Eda para';
}

}