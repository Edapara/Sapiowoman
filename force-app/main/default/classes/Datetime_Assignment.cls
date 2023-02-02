public class Datetime_Assignment {
    public void diffofDate(){

        date varTomorrowDate = date.newInstance(2023, 1, 15);
        System.debug('Tomorrow date is '+ varTomorrowDate);

        date varTodaysDate = date.newInstance(2023, 1, 14);
        system.debug('Today date is ' + varTodaysDate);

        Integer differenDay = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug(' the days difference between tomorrow and today is ' + differenDay);


    }
    public void Timecheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 1, 15, 7, 00, 00);
        System.debug('Tomorrow is date time ' + varTomorrowDatetime);
        
        Datetime var10DaysDatetime = Datetime.newInstance(2023, 1, 24, 7, 00, 00);
        System.debug('Ten days later from today ==>' + var10DaysDatetime);

        Long varDatetimeLong = 12339874361L;
        System.debug(varDatetimeLong);

        Datetime addSevenDays = varTomorrowDatetime.addDays(7);
        System.debug('Seven days after tomorrow ==> ' + addSevenDays);

        Datetime addTenDays = var10DaysDatetime.addDays(10);
        System.debug('After ten days ==>' + addTenDays);

    }
}