public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
      date birtDate = date.newInstance(1990, 10, 9);

      date todayDate = date.today();

      Integer ageInMonths = birtDate.monthsBetween(todayDate);
      System.debug('Vitap age in months is ==> ' + ageInMonths);

      Integer ageInDays = birtDate.daysBetween(todayDate);
      System.debug('Vitap age in days ==> ' + ageInDays);


    }

    public void printSubscriptionEndDate(){
       Date subStartDate = date.today();
        
       Date subEndDate = subStartDate.addDays(1000);
       System.debug('Subscription end date is ==> ' + subEndDate);

       Integer endDateYear = subEndDate.year();
       System.debug('year of end date ' + endDateYear);

       Integer endDateMonth = subEndDate.month();
       System.debug('month of end date' + endDateMonth);

    }
    public void printOfferEndDate(){
       datetime OfferStart = datetime.now();
       datetime OfferEnd = OfferStart.addHours(51);

       System.debug('offer end datetime is' + OfferEnd);


    Date OfferEndDATE = OfferEnd.date();
    System.debug('offer enddate is' + OfferEndDATE);
}
    public void birthDateInMS(){
        datetime birthDT = datetime.newInstance(1990, 10, 9, 7, 30, 00);
        long birthDateMS = birthDT.getTIME();
        System.debug('Vitap birth datetime in milliseconds -->' + birthDateMS);

    }
    
}