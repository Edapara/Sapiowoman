public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer lenthOfStr = sessionDescription.length();
        system.debug('length of session description string is ... ' + lenthOfStr);
   
        string strCapital = sessionDescription.toUpperCase();
        system.debug('capital string is ==> ' + strCapital);

        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('session description contains apex???' + containsApex);

        Boolean containsApex2 = sessionDescription.CONTAINS('Apex');
        system.debug('session description contains Apex????' + containsApex2);

        Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('session description contains APEX????? ' + containsApex3);

        Boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce? ' + containsSalesforce);

        string username = '  vitap r  ';
        system.debug('username length is --> ' + username.length());

        string username2 = username.trim();
        system.debug('username2 length is --> ' + username2.length());
    }
}