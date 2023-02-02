public class Player {
    public void playing() {
     String player1Name = 'Mikheal Jorden';
     system.debug(player1Name);

     String player2Name = 'Try Smith';
     system.debug(player2Name);

     String player3Name = 'Taylor Smith';
     system.debug(player3Name);

     String player4Name = 'Hello world';
     system.debug(player4Name);

     String player5Name = 'geldim gidiyorum';
     system.debug(player5Name);

     Integer one = player1Name.length();
     Integer two = player2Name.length();
     Integer three = player3Name.length();
     Integer four = player4Name.length();
     Integer five = player5Name.length();
     system.debug('Length of each player name's are ' + one + ' ' + two + ' ' + three + ' ' + four + ' ' + five);

     String oneBuyuk = player1Name.toUpperCase();
     String treeBuyuk = player3Name.toUpperCase();
     system.debug(oneBuyuk + ' ' + treeBuyuk);

    }
}