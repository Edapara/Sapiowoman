public class PlayingWithDates {
    public void printDateOutput() {
        date todaysDate = date.today();
        System.debug(todaysDate);

        date differenDay1 = date.newInstance(2789, 11, 5);
        System.debug( differenDay1);

        date differenDay2 = date.newInstance(1459, 3, 4);
        System.debug(differenDay2);

        Integer dayInt = 15;
        Integer monthInt = 1;
        Integer yearInt = 2023;

        date myDates = date.newInstance(yearInt, monthInt, dayInt);
        System.debug(myDates);
    
    }
}