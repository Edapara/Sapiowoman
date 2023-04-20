/*trigger AccountTriggerNew on Account (after insert) {
List<Contact> newContact = new List<Contact>();
for (Account acc: trigger.new){
    Contact con = new Contact();
    con.LastName = 
}*/

/*Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.*/
trigger AccountTriggerNew on Account (after update, after insert, before update, before insert){
    Set<Id> accontId = new Set<Id>();
    for(Account acc : trigger.new){
        accontId.add(acc.Id);
    }

    List<Opportunity> oppToUpdate = [select Id, StageName from Opportunity where AccountId in : accontId and StageName != 'Closed Won'];
    for(Opportunity opp : oppToUpdate){
        opp.StageName = 'Closed Lost';
       /* oppToUpdate.add(opp);*/
    }
    update oppToUpdate;


/* 1.oncelikle update edilen accountlarin id lerini set icerisinde topluyoruz.
 2. bir set olustusturup for ile yeni accountlari ekleyecegiz
 3. opportunityden yeni bir list olusturup accountid leri icerisinden stage name ve closede won olmayanlari update edecegiz*/

 /* Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Accoun*/

    List<Contact> contactToPhone = new List<Contact>();

    if(trigger.isUpdate && trigger.isAfter){
        
        for (Account acc : trigger.new) {
            Account oldAcc = trigger.oldMap.get(acc.Id);
            
            if(acc.Phone != oldAcc.Phone){
        List<Contact> cnContact = [select Id, AccountId, OtherPhone, MobilePhone from Contact where AccountId =: acc.Id] ;
                for (Contact cont : cnContact) {
                    cont.OtherPhone = oldAcc.Phone;
                    cont.MobilePhone = acc.Phone;
                    contactToPhone.add(cont);


                    
                }
                update contactToPhone;
                
            }


            
        }
    }

}
/*1.telefon listesi olustururldu sonrasinda bunu guncelleme yapmak icin icin update secildi. 
for loop ile accounttan map olusturulacak. old map ile id cagrildi.*/