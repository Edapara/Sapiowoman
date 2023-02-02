public class String_Assigment {
    public void StringAssigment() {
        String lokalString = 'Thanks for the session on the string';

        Integer lenghLe = lokalString.length();
        System.debug('Length of string is' + lenghLe);

        String capitalByk = lokalString.toUpperCase();
        System.debug('Capital string is ==>' + capitalByk);

        Boolean contSession = lokalString.contains('session');
        System.debug('Description contains session?' + contSession);

        Boolean contSessi = lokalString.contains('sessions');
        System.debug('Description contains session?' + contSessi);

        Boolean contSessi1 = lokalString.contains('SESSION');
        System.debug('Description contains session?' + contSessi1);

       
    }
}